import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:match_three/types/board_status.dart';

part 'board_state.freezed.dart';

@freezed
class BoardState with _$BoardState {
  const factory BoardState({
    required BoardStatus status,
    required List<int> board,
    required List<int> currentMove,
  }) = _BoardState;
}
