import 'dart:math';

import 'package:collection/collection.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:match_three/bloc/board_event.dart';
import 'package:match_three/bloc/board_state.dart';
import 'package:match_three/types/board_direction.dart';
import 'package:match_three/types/board_status.dart';

class BoardBloc extends Bloc<BoardEvent, BoardState> {
  BoardBloc({
    required this.cols,
    required this.rows,
  }) : super(BoardState(
          status: BoardStatus.unknown,
          board: List.filled(cols * rows, 0),
          currentMove: [],
        )) {
    on<Initialize>(_onInitialize);
    on<Move>(_onMove);
    on<EndMove>(_onEndMove);
    on<Evaluate>(_onEvaluate);
    on<Fill>(_onFill);
  }

  final int cols;
  final int rows;

  void _onInitialize(Initialize event, Emitter<BoardState> emit) {
    final randGen = Random();

    emit(state.copyWith(
      status: BoardStatus.idle,
      board: state.board.map((_) => randGen.nextInt(5)).toList(growable: false),
    ));
  }

  void _onMove(Move event, Emitter<BoardState> emit) {
    final index1 = event.index;
    int? index2 = index1;

    // Check for impossible moves
    switch (event.direction) {
      case BoardDirection.down:
        index2 = (index1 + cols) < state.board.length ? index1 + cols : null;
        break;
      case BoardDirection.left:
        index2 = index1 % cols > 0 ? index1 - 1 : null;
        break;
      case BoardDirection.right:
        index2 = (index1 + 1) % cols > 0 ? index1 + 1 : null;
        break;
      case BoardDirection.up:
        index2 = (index1 - cols) >= 0 ? index1 - cols : null;
        break;
    }

    if (index2 == null) return;

    final tile1 = state.board[index1];
    final tile2 = state.board[index2];

    emit(state.copyWith(
      status: BoardStatus.moving,
      board: state.board
          .mapIndexed((index, tile) =>
              index == index1 ? tile2 : (index == index2 ? tile1 : tile))
          .toList(growable: false),
      currentMove: [index1, index2],
    ));
  }

  void _onEndMove(EndMove event, Emitter<BoardState> emit) {
    emit(state.copyWith(
      status: BoardStatus.idle,
      currentMove: [],
    ));
  }

  void _onEvaluate(Evaluate event, Emitter<BoardState> emit) {
    emit(state.copyWith(
      status: BoardStatus.evaluating,
    ));
  }

  void _onFill(Fill event, Emitter<BoardState> emit) {
    emit(state.copyWith(
      status: BoardStatus.filling,
    ));
  }
}
