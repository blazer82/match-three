import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:match_three/bloc/board_bloc.dart';
import 'package:match_three/bloc/board_event.dart';
import 'package:match_three/bloc/board_state.dart';
import 'package:match_three/types/board_direction.dart';
import 'package:match_three/types/board_status.dart';

class GameBoard extends StatefulWidget {
  const GameBoard({Key? key}) : super(key: key);

  @override
  State<GameBoard> createState() => GameBoardState();
}

class GameBoardState extends State<GameBoard> {
  Offset _dragStart = Offset.zero;
  bool _dragActive = false;

  @override
  Widget build(BuildContext context) {
    Color _mapColor(int color) {
      switch (color) {
        case 1:
          return Colors.red;
        case 2:
          return Colors.green;
        case 3:
          return Colors.blue;
        case 4:
          return Colors.yellow;
        case 5:
          return Colors.purple;
        default:
          return Colors.transparent;
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

    Widget _getTileElement(int color) {
      final boardBloc = BlocProvider.of<BoardBloc>(context);
      const padding = 5.0;
      final size =
          (MediaQuery.of(context).size.width / boardBloc.cols) - (2 * padding);

      return Padding(
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
    }

    Widget _mapBoardToTiles(int index, int color) {
      final boardBloc = BlocProvider.of<BoardBloc>(context);
      final position = _getLocalPositionFromTileIndex(index);
      final tileElement = _getTileElement(color);

      if (boardBloc.state.status == BoardStatus.moving &&
          boardBloc.state.currentMove.contains(index)) {
        final otherIndex = boardBloc.state.currentMove
            .firstWhere((element) => element != index);

        final otherPosition = _getLocalPositionFromTileIndex(otherIndex);

        return TweenAnimationBuilder(
            tween: Tween<Offset>(begin: otherPosition, end: position),
            duration: kThemeChangeDuration,
            curve: Curves.bounceInOut,
            onEnd: () {
              if (boardBloc.state.currentMove.first == index) {
                boardBloc.add(const EndMove());
              }
            },
            builder: (context, Offset value, _) {
              return Positioned(
                left: value.dx,
                top: value.dy,
                child: tileElement,
              );
            });
      } else if (boardBloc.state.status == BoardStatus.evaluating &&
          boardBloc.state.positionsToEliminate.contains(index)) {
        if (boardBloc.state.positionsToEliminate.first == index) {
          HapticFeedback.lightImpact();
        }
        return TweenAnimationBuilder(
            tween: Tween<double>(begin: 1.0, end: 0.0),
            duration: kThemeChangeDuration,
            curve: Curves.bounceIn,
            onEnd: () {
              if (boardBloc.state.positionsToEliminate.first == index) {
                boardBloc.add(const EndEvaluation());
              }
            },
            builder: (context, double value, _) {
              return Positioned(
                left: position.dx,
                top: position.dy,
                child: Transform.scale(
                  scale: value,
                  child: tileElement,
                ),
              );
            });
      } else if (boardBloc.state.status == BoardStatus.filling &&
          boardBloc.state.fillAnimations
              .any((element) => element.first == index)) {
        final otherIndex = boardBloc.state.fillAnimations
            .firstWhere((element) => element.first == index)
            .last;

        final otherPosition = _getLocalPositionFromTileIndex(otherIndex);

        return TweenAnimationBuilder(
            tween: Tween<Offset>(begin: position, end: otherPosition),
            duration: kThemeChangeDuration * 2,
            curve: Curves.bounceOut,
            onEnd: () {
              if (boardBloc.state.fillAnimations.first.first == index) {
                boardBloc.add(const EndFill());
              }
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

    Widget _mapSpareBoardToTiles(int index, int color) {
      final boardBloc = BlocProvider.of<BoardBloc>(context);
      final position = _getLocalPositionFromTileIndex(
          index - boardBloc.state.spareBoard.length);
      final tileElement = _getTileElement(color);

      if (boardBloc.state.status == BoardStatus.filling &&
          boardBloc.state.fillAnimations.any((element) =>
              boardBloc.state.spareBoard.length + element.first == index &&
              element.last >= 0)) {
        final otherIndex = boardBloc.state.fillAnimations
            .firstWhere((element) =>
                boardBloc.state.spareBoard.length + element.first == index)
            .last;

        final otherPosition = _getLocalPositionFromTileIndex(otherIndex);

        return TweenAnimationBuilder(
            tween: Tween<Offset>(begin: position, end: otherPosition),
            duration: kThemeChangeDuration * 2,
            curve: Curves.bounceOut,
            onEnd: () {
              if (boardBloc.state.spareBoard.length +
                      boardBloc.state.fillAnimations.first.first ==
                  index) {
                boardBloc.add(const EndFill());
              }
            },
            builder: (context, Offset value, _) {
              return Positioned(
                left: value.dx,
                top: value.dy,
                child: tileElement,
              );
            });
      } else {
        return Container();
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

      if (!_dragActive || delta.distance < 15) return;

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
        onPanStart:
            boardState.status == BoardStatus.idle ? _handleDragStart : null,
        onPanUpdate: _handleDragUpdate,
        onPanEnd: _handleDragEnd,
        child: Stack(
          children: boardState.board
                  .mapIndexed(_mapBoardToTiles)
                  .toList(growable: false) +
              boardState.spareBoard
                  .mapIndexed(_mapSpareBoardToTiles)
                  .toList(growable: false),
        ),
      );
    });
  }
}
