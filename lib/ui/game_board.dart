import 'dart:math';

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';

const rows = 6;
const cols = 6;

class GameBoard extends StatefulWidget {
  const GameBoard({Key? key}) : super(key: key);

  @override
  State<GameBoard> createState() => _GameBoardState();
}

class _GameBoardState extends State<GameBoard> {
  List<int> _board = List.filled(rows * cols, 0);
  Offset _dragStart = Offset.zero;
  Offset _dragDelta = Offset.zero;
  List<int> _currentAnimation = [];

  @override
  void initState() {
    super.initState();

    final randGen = Random();
    _board = _board.map((_) => randGen.nextInt(5)).toList(growable: false);
  }

  Widget _mapBoardToTiles(int index, int color) {
    const padding = 5.0;
    final size = (MediaQuery.of(context).size.width / cols) - (2 * padding);
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

    if (_currentAnimation.contains(index)) {
      final otherIndex =
          _currentAnimation.firstWhere((element) => element != index);

      final otherPosition = _getLocalPositionFromTileIndex(otherIndex);

      return TweenAnimationBuilder(
          tween: Tween<Offset>(begin: otherPosition, end: position),
          duration: kThemeChangeDuration,
          curve: Curves.bounceInOut,
          onEnd: () {
            setState(() {
              _currentAnimation = [];
            });
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

  void _handleDragStart(DragStartDetails details) {
    setState(() {
      _dragStart = details.localPosition;
      _dragDelta = Offset.zero;
    });
  }

  void _handleDragUpdate(DragUpdateDetails details) {
    setState(() {
      _dragDelta = details.localPosition - _dragStart;
    });
  }

  void _handleDragEnd(DragEndDetails details) {
    if (_dragDelta.distance < 10) return;

    final tileIndex = _getTileIndexByLocalPosition(_dragStart);

    if (_dragDelta.dx.abs() > _dragDelta.dy.abs()) {
      // horizontal
      if (_dragDelta.dx > 0) {
        // right
        _exchangeTiles(
            tileIndex, (tileIndex + 1) % cols > 0 ? tileIndex + 1 : null);
      } else {
        // left
        _exchangeTiles(tileIndex, tileIndex % cols > 0 ? tileIndex - 1 : null);
      }
    } else {
      // vertical
      if (_dragDelta.dy > 0) {
        // down
        _exchangeTiles(tileIndex,
            (tileIndex + cols) < _board.length ? tileIndex + cols : null);
      } else {
        // up
        _exchangeTiles(
            tileIndex, (tileIndex - cols) >= 0 ? tileIndex - cols : null);
      }
    }
  }

  int _getTileIndexByLocalPosition(Offset position) {
    final tileSizeWithPadding = MediaQuery.of(context).size.width / cols;
    final col = (position.dx / tileSizeWithPadding).floor();
    final row = (position.dy / tileSizeWithPadding).floor();
    return row * cols + col;
  }

  Offset _getLocalPositionFromTileIndex(int index) {
    final tileSizeWithPadding = MediaQuery.of(context).size.width / cols;
    final row = (index / cols).floor();
    final col = index % cols;
    return Offset(col * tileSizeWithPadding, row * tileSizeWithPadding);
  }

  void _exchangeTiles(int index1, int? index2) {
    if (index2 == null) return;

    final tile1 = _board[index1];
    final tile2 = _board[index2];

    setState(() {
      _currentAnimation = [index1, index2];
      _board[index1] = tile2;
      _board[index2] = tile1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onPanStart: _handleDragStart,
        onPanUpdate: _handleDragUpdate,
        onPanEnd: _handleDragEnd,
        child: Stack(
          children: _board.mapIndexed(_mapBoardToTiles).toList(growable: false),
        ),
      ),
    );
  }
}
