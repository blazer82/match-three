import 'package:flutter/cupertino.dart';
import 'package:match_three/ui/game_board.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const GameBoard();
  }
}
