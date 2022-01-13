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
          positionsToEliminate: [],
        )) {
    on<Initialize>(_onInitialize);
    on<Move>(_onMove);
    on<EndMove>(_onEndMove);
    on<Evaluate>(_onEvaluate);
    on<EndEvaluation>(_onEndEvaluation);
    on<Fill>(_onFill);
  }

  final int cols;
  final int rows;

  final randGen = Random();

  void _onInitialize(Initialize event, Emitter<BoardState> emit) {
    var board = _newBoard();
    var matches = _returnMatches(board);

    while (matches.isNotEmpty) {
      board = _newBoard();
      matches = _returnMatches(board);
    }

    emit(state.copyWith(
      status: BoardStatus.idle,
      board: board,
    ));
  }

  void _onMove(Move event, Emitter<BoardState> emit) {
    final index1 = event.index;
    int? index2 = index1;

    // Check for impossible moves
    switch (event.direction) {
      case BoardDirection.down:
        index2 = _getBelowOrNull(index1);
        break;
      case BoardDirection.left:
        index2 = _getLeftOrNull(index1);
        break;
      case BoardDirection.right:
        index2 = _getRightOrNull(index1);
        break;
      case BoardDirection.up:
        index2 = _getAboveOrNull(index1);
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

    add(const Evaluate());
  }

  void _onEvaluate(Evaluate event, Emitter<BoardState> emit) {
    final matches = _returnMatches(state.board);

    emit(state.copyWith(
      status: BoardStatus.evaluating,
      positionsToEliminate: matches,
    ));
  }

  void _onEndEvaluation(EndEvaluation event, Emitter<BoardState> emit) {
    emit(state.copyWith(
      status: BoardStatus.idle,
      board: state.board
          .mapIndexed((index, element) =>
              state.positionsToEliminate.contains(index) ? 0 : element)
          .toList(growable: false),
      positionsToEliminate: [],
    ));
  }

  void _onFill(Fill event, Emitter<BoardState> emit) {
    emit(state.copyWith(
      status: BoardStatus.filling,
    ));
  }

  int? _getLeftOrNull(int index) => (index % cols) > 0 ? index - 1 : null;
  int? _getRightOrNull(int index) => (index + 1) % cols > 0 ? index + 1 : null;
  int? _getAboveOrNull(int index) => (index - cols) >= 0 ? index - cols : null;
  int? _getBelowOrNull(int index, {List<int>? board}) =>
      (index + cols) < (board ?? state.board).length ? index + cols : null;

  List<int> _newBoard() =>
      state.board.map((_) => randGen.nextInt(7) + 1).toList(growable: false);

  List<int> _returnMatches(List<int> board) => board
      .mapIndexed((index, element) {
        final left = _getLeftOrNull(index);
        final right = _getRightOrNull(index);
        final above = _getAboveOrNull(index);
        final below = _getBelowOrNull(index, board: board);

        if (left != null &&
            right != null &&
            element == board[left] &&
            element == board[right]) {
          return [left, index, right];
        }

        if (above != null &&
            below != null &&
            element == board[above] &&
            element == board[below]) {
          return [above, index, below];
        }

        return null;
      })
      .whereNotNull()
      .expand((element) => element)
      .toSet()
      .toList(growable: false);
}
