import 'package:flutter/cupertino.dart';
import 'package:puzzle/ui/game_board.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const GameBoard();
  }
}
