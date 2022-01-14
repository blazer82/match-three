import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:match_three/bloc/board_event.dart';
import 'package:match_three/types/board_status.dart';

part 'board_state.freezed.dart';

@freezed
class BoardState with _$BoardState {
  const factory BoardState({
    required BoardStatus status,
    required List<int> board,
    required List<int> spareBoard,
    List<int>? pendingBoard,
    required List<int> currentMove,
    required List<int> positionsToEliminate,
    required List<List<int>> fillAnimations,
    required int score,
    Move? possiblyInvalidMove,
    required bool moveIsRollbackEligible,
  }) = _BoardState;
}
