import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:match_three/types/board_direction.dart';

part 'board_event.freezed.dart';

@freezed
class BoardEvent with _$BoardEvent {
  const factory BoardEvent.initialize() = Initialize;
  const factory BoardEvent.move(
      {required int index, required BoardDirection direction}) = Move;
  const factory BoardEvent.endMove() = EndMove;
  const factory BoardEvent.evaluate() = Evaluate;
  const factory BoardEvent.endEvaluation() = EndEvaluation;
  const factory BoardEvent.fill() = Fill;
}
