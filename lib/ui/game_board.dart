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
  List<int> board = List.filled(rows * cols, 0);

  @override
  void initState() {
    super.initState();

    final randGen = Random();
    board = board.map((_) => randGen.nextInt(5)).toList(growable: false);
  }

  Widget _mapRow({required int row}) {
    const padding = 5.0;
    final size = (MediaQuery.of(context).size.width / cols) - (2 * padding);

    return Row(
      children: board
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

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: List.generate(rows, (index) => index)
            .map((index) => _mapRow(row: index))
            .toList(growable: false),
      ),
    );
  }
}
