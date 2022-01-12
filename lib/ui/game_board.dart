import 'dart:math';

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
  bool _boardInteractive = true;

  @override
  void initState() {
    super.initState();

    final randGen = Random();
    _board = _board.map((_) => randGen.nextInt(5)).toList(growable: false);
  }

  Widget _mapRow({required int row}) {
    const padding = 5.0;
    final size = (MediaQuery.of(context).size.width / cols) - (2 * padding);

    return Row(
      children: _board
          .getRange(row * cols, row * cols + cols)
          .map((item) => Padding(
                padding: const EdgeInsets.all(padding),
                child: Container(
                  color: _mapColor(index: item),
                  height: size,
                  width: size,
                ),
              ))
          .toList(growable: false),
    );
  }

  Color _mapColor({required int index}) {
    switch (index) {
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

  void _handleDragEnd(DragEndDetails details) async {
    if (_dragDelta.distance < 10) return;

    final tileIndex = _getTileIndexByLocalPosition(_dragStart);
    print('### tileIndex');
    print(tileIndex);

    setState(() {
      _boardInteractive = false;
    });

    if (_dragDelta.dx.abs() > _dragDelta.dy.abs()) {
      // horizontal
      if (_dragDelta.dx > 0) {
        // right
        print('RIGHT');
        await _exchangeTiles(
            tileIndex, (tileIndex + 1) % cols > 0 ? tileIndex + 1 : null);
      } else {
        // left
        print('LEFT');
        await _exchangeTiles(
            tileIndex, tileIndex % cols > 0 ? tileIndex - 1 : null);
      }
    } else {
      // vertical
      if (_dragDelta.dy > 0) {
        // down
        print('DOWN');
        await _exchangeTiles(tileIndex,
            (tileIndex + cols) < _board.length ? tileIndex + cols : null);
      } else {
        // up
        print('UP');
        await _exchangeTiles(
            tileIndex, (tileIndex - cols) >= 0 ? tileIndex - cols : null);
      }
    }

    setState(() {
      _boardInteractive = true;
    });
  }

  int _getTileIndexByLocalPosition(Offset position) {
    final tileSizeWithPadding = MediaQuery.of(context).size.width / cols;
    final col = (position.dx / tileSizeWithPadding).floor();
    final row = (position.dy / tileSizeWithPadding).floor();
    return row * cols + col;
  }

  Future<void> _exchangeTiles(int index1, int? index2) async {
    if (index2 == null) return;

    final tile1 = _board[index1];
    final tile2 = _board[index2];

    _board[index1] = tile2;
    _board[index2] = tile1;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onPanStart: _boardInteractive ? _handleDragStart : null,
        onPanUpdate: _boardInteractive ? _handleDragUpdate : null,
        onPanEnd: _boardInteractive ? _handleDragEnd : null,
        child: Column(
          children: List.generate(rows, (index) => index)
              .map((index) => _mapRow(row: index))
              .toList(growable: false),
        ),
      ),
    );
  }
}
