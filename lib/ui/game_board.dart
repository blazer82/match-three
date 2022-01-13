import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:match_three/bloc/board_bloc.dart';
import 'package:match_three/bloc/board_event.dart';
import 'package:match_three/bloc/board_state.dart';
import 'package:match_three/types/board_direction.dart';
import 'package:match_three/types/board_status.dart';

class GameBoard extends StatelessWidget {
  const GameBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<BoardBloc>(
      create: (_) => BoardBloc(cols: 6, rows: 6),
      child: SafeArea(
        child: _Board(),
      ),
    );
  }
}

class _Board extends StatefulWidget {
  @override
  State<_Board> createState() => _BoardState();
}

class _BoardState extends State<_Board> {
  Offset _dragStart = Offset.zero;
  bool _dragActive = false;

  @override
  Widget build(BuildContext context) {
    Color _mapColor(int color) {
      switch (color) {
        case 0:
          return Colors.red;
        case 1:
          return Colors.green;
        case 2:
          return Colors.blue;
        case 3:
          return Colors.yellow;
        case 4:
          return Colors.purple;
        default:
          return Colors.black;
      }
    }

    int _getTileIndexByLocalPosition(Offset position) {
      final boardBloc = BlocProvider.of<BoardBloc>(context);
      final tileSizeWithPadding =
          MediaQuery.of(context).size.width / boardBloc.cols;
      final col = (position.dx / tileSizeWithPadding).floor();
      final row = (position.dy / tileSizeWithPadding).floor();
      return row * boardBloc.cols + col;
    }

    Offset _getLocalPositionFromTileIndex(int index) {
      final boardBloc = BlocProvider.of<BoardBloc>(context);
      final tileSizeWithPadding =
          MediaQuery.of(context).size.width / boardBloc.cols;
      final row = (index / boardBloc.cols).floor();
      final col = index % boardBloc.cols;
      return Offset(col * tileSizeWithPadding, row * tileSizeWithPadding);
    }

    Widget _mapBoardToTiles(int index, int color) {
      final boardBloc = BlocProvider.of<BoardBloc>(context);
      const padding = 5.0;
      final size =
          (MediaQuery.of(context).size.width / boardBloc.cols) - (2 * padding);
      final position = _getLocalPositionFromTileIndex(index);

      final tileElement = Padding(
        padding: const EdgeInsets.all(padding),
        child: Container(
          decoration: BoxDecoration(
            color: _mapColor(color),
            borderRadius: BorderRadius.circular(size / 4),
          ),
          height: size,
          width: size,
        ),
      );

      if (boardBloc.state.currentMove.contains(index)) {
        final otherIndex = boardBloc.state.currentMove
            .firstWhere((element) => element != index);

        final otherPosition = _getLocalPositionFromTileIndex(otherIndex);

        return TweenAnimationBuilder(
            tween: Tween<Offset>(begin: otherPosition, end: position),
            duration: kThemeChangeDuration,
            curve: Curves.bounceInOut,
            onEnd: () {
              boardBloc.add(const EndMove());
            },
            builder: (context, Offset value, _) {
              return Positioned(
                left: value.dx,
                top: value.dy,
                child: tileElement,
              );
            });
      } else {
        return Positioned(
          left: position.dx,
          top: position.dy,
          child: tileElement,
        );
      }
    }

    void _handleDragStart(DragStartDetails details) {
      setState(() {
        _dragStart = details.localPosition;
        _dragActive = true;
      });
    }

    void _handleDragUpdate(DragUpdateDetails details) {
      final delta = details.localPosition - _dragStart;

      final minDistance = MediaQuery.of(context).devicePixelRatio * 5;

      if (!_dragActive || delta.distance < minDistance) return;

      final boardBloc = BlocProvider.of<BoardBloc>(context);

      final tileIndex = _getTileIndexByLocalPosition(_dragStart);

      if (delta.dx.abs() > delta.dy.abs()) {
        // horizontal
        if (delta.dx > 0) {
          boardBloc
              .add(Move(index: tileIndex, direction: BoardDirection.right));
        } else {
          boardBloc.add(Move(index: tileIndex, direction: BoardDirection.left));
        }
      } else {
        // vertical
        if (delta.dy > 0) {
          boardBloc.add(Move(index: tileIndex, direction: BoardDirection.down));
        } else {
          boardBloc.add(Move(index: tileIndex, direction: BoardDirection.up));
        }
      }

      setState(() {
        _dragActive = false;
      });
    }

    void _handleDragEnd(DragEndDetails details) {
      setState(() {
        _dragActive = false;
      });
    }

    return BlocBuilder<BoardBloc, BoardState>(builder: (context, boardState) {
      if (boardState.status == BoardStatus.unknown) {
        BlocProvider.of<BoardBloc>(context).add(const Initialize());
        return const Center(
          child: CircularProgressIndicator(),
        );
      }

      return GestureDetector(
        onPanStart: _handleDragStart,
        onPanUpdate: _handleDragUpdate,
        onPanEnd: _handleDragEnd,
        child: Stack(
          children: boardState.board
              .mapIndexed(_mapBoardToTiles)
              .toList(growable: false),
        ),
      );
    });
  }
}
