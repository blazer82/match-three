import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:match_three/bloc/board_bloc.dart';
import 'package:match_three/bloc/board_state.dart';
import 'package:match_three/ui/game_board.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<BoardBloc>(
      create: (_) => BoardBloc(cols: 6, rows: 6),
      child: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.width,
              child: const GameBoard(),
            ),
            const SizedBox(height: 50),
            const _Score(),
          ],
        ),
      ),
    );
  }
}

class _Score extends StatelessWidget {
  const _Score({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BoardBloc, BoardState>(builder: (context, boardState) {
      return Column(
        children: [
          Text(
            'Score',
            style: Theme.of(context)
                .textTheme
                .headline4
                ?.copyWith(color: Colors.white70),
          ),
          Text(
            boardState.score.toString(),
            style: Theme.of(context)
                .textTheme
                .headline3
                ?.copyWith(color: Colors.white),
          ),
        ],
      );
    });
  }
}
