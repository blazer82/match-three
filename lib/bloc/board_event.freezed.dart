// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'board_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$BoardEventTearOff {
  const _$BoardEventTearOff();

  Initialize initialize() {
    return const Initialize();
  }

  Move move({required int index, required BoardDirection direction}) {
    return Move(
      index: index,
      direction: direction,
    );
  }

  EndMove endMove() {
    return const EndMove();
  }

  Evaluate evaluate() {
    return const Evaluate();
  }

  EndEvaluation endEvaluation() {
    return const EndEvaluation();
  }

  Fill fill() {
    return const Fill();
  }
}

/// @nodoc
const $BoardEvent = _$BoardEventTearOff();

/// @nodoc
mixin _$BoardEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(int index, BoardDirection direction) move,
    required TResult Function() endMove,
    required TResult Function() evaluate,
    required TResult Function() endEvaluation,
    required TResult Function() fill,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(int index, BoardDirection direction)? move,
    TResult Function()? endMove,
    TResult Function()? evaluate,
    TResult Function()? endEvaluation,
    TResult Function()? fill,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(int index, BoardDirection direction)? move,
    TResult Function()? endMove,
    TResult Function()? evaluate,
    TResult Function()? endEvaluation,
    TResult Function()? fill,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(Move value) move,
    required TResult Function(EndMove value) endMove,
    required TResult Function(Evaluate value) evaluate,
    required TResult Function(EndEvaluation value) endEvaluation,
    required TResult Function(Fill value) fill,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(Move value)? move,
    TResult Function(EndMove value)? endMove,
    TResult Function(Evaluate value)? evaluate,
    TResult Function(EndEvaluation value)? endEvaluation,
    TResult Function(Fill value)? fill,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(Move value)? move,
    TResult Function(EndMove value)? endMove,
    TResult Function(Evaluate value)? evaluate,
    TResult Function(EndEvaluation value)? endEvaluation,
    TResult Function(Fill value)? fill,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BoardEventCopyWith<$Res> {
  factory $BoardEventCopyWith(
          BoardEvent value, $Res Function(BoardEvent) then) =
      _$BoardEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$BoardEventCopyWithImpl<$Res> implements $BoardEventCopyWith<$Res> {
  _$BoardEventCopyWithImpl(this._value, this._then);

  final BoardEvent _value;
  // ignore: unused_field
  final $Res Function(BoardEvent) _then;
}

/// @nodoc
abstract class $InitializeCopyWith<$Res> {
  factory $InitializeCopyWith(
          Initialize value, $Res Function(Initialize) then) =
      _$InitializeCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitializeCopyWithImpl<$Res> extends _$BoardEventCopyWithImpl<$Res>
    implements $InitializeCopyWith<$Res> {
  _$InitializeCopyWithImpl(Initialize _value, $Res Function(Initialize) _then)
      : super(_value, (v) => _then(v as Initialize));

  @override
  Initialize get _value => super._value as Initialize;
}

/// @nodoc

class _$Initialize implements Initialize {
  const _$Initialize();

  @override
  String toString() {
    return 'BoardEvent.initialize()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Initialize);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(int index, BoardDirection direction) move,
    required TResult Function() endMove,
    required TResult Function() evaluate,
    required TResult Function() endEvaluation,
    required TResult Function() fill,
  }) {
    return initialize();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(int index, BoardDirection direction)? move,
    TResult Function()? endMove,
    TResult Function()? evaluate,
    TResult Function()? endEvaluation,
    TResult Function()? fill,
  }) {
    return initialize?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(int index, BoardDirection direction)? move,
    TResult Function()? endMove,
    TResult Function()? evaluate,
    TResult Function()? endEvaluation,
    TResult Function()? fill,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(Move value) move,
    required TResult Function(EndMove value) endMove,
    required TResult Function(Evaluate value) evaluate,
    required TResult Function(EndEvaluation value) endEvaluation,
    required TResult Function(Fill value) fill,
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(Move value)? move,
    TResult Function(EndMove value)? endMove,
    TResult Function(Evaluate value)? evaluate,
    TResult Function(EndEvaluation value)? endEvaluation,
    TResult Function(Fill value)? fill,
  }) {
    return initialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(Move value)? move,
    TResult Function(EndMove value)? endMove,
    TResult Function(Evaluate value)? evaluate,
    TResult Function(EndEvaluation value)? endEvaluation,
    TResult Function(Fill value)? fill,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class Initialize implements BoardEvent {
  const factory Initialize() = _$Initialize;
}

/// @nodoc
abstract class $MoveCopyWith<$Res> {
  factory $MoveCopyWith(Move value, $Res Function(Move) then) =
      _$MoveCopyWithImpl<$Res>;
  $Res call({int index, BoardDirection direction});
}

/// @nodoc
class _$MoveCopyWithImpl<$Res> extends _$BoardEventCopyWithImpl<$Res>
    implements $MoveCopyWith<$Res> {
  _$MoveCopyWithImpl(Move _value, $Res Function(Move) _then)
      : super(_value, (v) => _then(v as Move));

  @override
  Move get _value => super._value as Move;

  @override
  $Res call({
    Object? index = freezed,
    Object? direction = freezed,
  }) {
    return _then(Move(
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      direction: direction == freezed
          ? _value.direction
          : direction // ignore: cast_nullable_to_non_nullable
              as BoardDirection,
    ));
  }
}

/// @nodoc

class _$Move implements Move {
  const _$Move({required this.index, required this.direction});

  @override
  final int index;
  @override
  final BoardDirection direction;

  @override
  String toString() {
    return 'BoardEvent.move(index: $index, direction: $direction)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Move &&
            const DeepCollectionEquality().equals(other.index, index) &&
            const DeepCollectionEquality().equals(other.direction, direction));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(index),
      const DeepCollectionEquality().hash(direction));

  @JsonKey(ignore: true)
  @override
  $MoveCopyWith<Move> get copyWith =>
      _$MoveCopyWithImpl<Move>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(int index, BoardDirection direction) move,
    required TResult Function() endMove,
    required TResult Function() evaluate,
    required TResult Function() endEvaluation,
    required TResult Function() fill,
  }) {
    return move(index, direction);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(int index, BoardDirection direction)? move,
    TResult Function()? endMove,
    TResult Function()? evaluate,
    TResult Function()? endEvaluation,
    TResult Function()? fill,
  }) {
    return move?.call(index, direction);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(int index, BoardDirection direction)? move,
    TResult Function()? endMove,
    TResult Function()? evaluate,
    TResult Function()? endEvaluation,
    TResult Function()? fill,
    required TResult orElse(),
  }) {
    if (move != null) {
      return move(index, direction);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(Move value) move,
    required TResult Function(EndMove value) endMove,
    required TResult Function(Evaluate value) evaluate,
    required TResult Function(EndEvaluation value) endEvaluation,
    required TResult Function(Fill value) fill,
  }) {
    return move(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(Move value)? move,
    TResult Function(EndMove value)? endMove,
    TResult Function(Evaluate value)? evaluate,
    TResult Function(EndEvaluation value)? endEvaluation,
    TResult Function(Fill value)? fill,
  }) {
    return move?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(Move value)? move,
    TResult Function(EndMove value)? endMove,
    TResult Function(Evaluate value)? evaluate,
    TResult Function(EndEvaluation value)? endEvaluation,
    TResult Function(Fill value)? fill,
    required TResult orElse(),
  }) {
    if (move != null) {
      return move(this);
    }
    return orElse();
  }
}

abstract class Move implements BoardEvent {
  const factory Move({required int index, required BoardDirection direction}) =
      _$Move;

  int get index;
  BoardDirection get direction;
  @JsonKey(ignore: true)
  $MoveCopyWith<Move> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EndMoveCopyWith<$Res> {
  factory $EndMoveCopyWith(EndMove value, $Res Function(EndMove) then) =
      _$EndMoveCopyWithImpl<$Res>;
}

/// @nodoc
class _$EndMoveCopyWithImpl<$Res> extends _$BoardEventCopyWithImpl<$Res>
    implements $EndMoveCopyWith<$Res> {
  _$EndMoveCopyWithImpl(EndMove _value, $Res Function(EndMove) _then)
      : super(_value, (v) => _then(v as EndMove));

  @override
  EndMove get _value => super._value as EndMove;
}

/// @nodoc

class _$EndMove implements EndMove {
  const _$EndMove();

  @override
  String toString() {
    return 'BoardEvent.endMove()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is EndMove);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(int index, BoardDirection direction) move,
    required TResult Function() endMove,
    required TResult Function() evaluate,
    required TResult Function() endEvaluation,
    required TResult Function() fill,
  }) {
    return endMove();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(int index, BoardDirection direction)? move,
    TResult Function()? endMove,
    TResult Function()? evaluate,
    TResult Function()? endEvaluation,
    TResult Function()? fill,
  }) {
    return endMove?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(int index, BoardDirection direction)? move,
    TResult Function()? endMove,
    TResult Function()? evaluate,
    TResult Function()? endEvaluation,
    TResult Function()? fill,
    required TResult orElse(),
  }) {
    if (endMove != null) {
      return endMove();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(Move value) move,
    required TResult Function(EndMove value) endMove,
    required TResult Function(Evaluate value) evaluate,
    required TResult Function(EndEvaluation value) endEvaluation,
    required TResult Function(Fill value) fill,
  }) {
    return endMove(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(Move value)? move,
    TResult Function(EndMove value)? endMove,
    TResult Function(Evaluate value)? evaluate,
    TResult Function(EndEvaluation value)? endEvaluation,
    TResult Function(Fill value)? fill,
  }) {
    return endMove?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(Move value)? move,
    TResult Function(EndMove value)? endMove,
    TResult Function(Evaluate value)? evaluate,
    TResult Function(EndEvaluation value)? endEvaluation,
    TResult Function(Fill value)? fill,
    required TResult orElse(),
  }) {
    if (endMove != null) {
      return endMove(this);
    }
    return orElse();
  }
}

abstract class EndMove implements BoardEvent {
  const factory EndMove() = _$EndMove;
}

/// @nodoc
abstract class $EvaluateCopyWith<$Res> {
  factory $EvaluateCopyWith(Evaluate value, $Res Function(Evaluate) then) =
      _$EvaluateCopyWithImpl<$Res>;
}

/// @nodoc
class _$EvaluateCopyWithImpl<$Res> extends _$BoardEventCopyWithImpl<$Res>
    implements $EvaluateCopyWith<$Res> {
  _$EvaluateCopyWithImpl(Evaluate _value, $Res Function(Evaluate) _then)
      : super(_value, (v) => _then(v as Evaluate));

  @override
  Evaluate get _value => super._value as Evaluate;
}

/// @nodoc

class _$Evaluate implements Evaluate {
  const _$Evaluate();

  @override
  String toString() {
    return 'BoardEvent.evaluate()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Evaluate);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(int index, BoardDirection direction) move,
    required TResult Function() endMove,
    required TResult Function() evaluate,
    required TResult Function() endEvaluation,
    required TResult Function() fill,
  }) {
    return evaluate();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(int index, BoardDirection direction)? move,
    TResult Function()? endMove,
    TResult Function()? evaluate,
    TResult Function()? endEvaluation,
    TResult Function()? fill,
  }) {
    return evaluate?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(int index, BoardDirection direction)? move,
    TResult Function()? endMove,
    TResult Function()? evaluate,
    TResult Function()? endEvaluation,
    TResult Function()? fill,
    required TResult orElse(),
  }) {
    if (evaluate != null) {
      return evaluate();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(Move value) move,
    required TResult Function(EndMove value) endMove,
    required TResult Function(Evaluate value) evaluate,
    required TResult Function(EndEvaluation value) endEvaluation,
    required TResult Function(Fill value) fill,
  }) {
    return evaluate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(Move value)? move,
    TResult Function(EndMove value)? endMove,
    TResult Function(Evaluate value)? evaluate,
    TResult Function(EndEvaluation value)? endEvaluation,
    TResult Function(Fill value)? fill,
  }) {
    return evaluate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(Move value)? move,
    TResult Function(EndMove value)? endMove,
    TResult Function(Evaluate value)? evaluate,
    TResult Function(EndEvaluation value)? endEvaluation,
    TResult Function(Fill value)? fill,
    required TResult orElse(),
  }) {
    if (evaluate != null) {
      return evaluate(this);
    }
    return orElse();
  }
}

abstract class Evaluate implements BoardEvent {
  const factory Evaluate() = _$Evaluate;
}

/// @nodoc
abstract class $EndEvaluationCopyWith<$Res> {
  factory $EndEvaluationCopyWith(
          EndEvaluation value, $Res Function(EndEvaluation) then) =
      _$EndEvaluationCopyWithImpl<$Res>;
}

/// @nodoc
class _$EndEvaluationCopyWithImpl<$Res> extends _$BoardEventCopyWithImpl<$Res>
    implements $EndEvaluationCopyWith<$Res> {
  _$EndEvaluationCopyWithImpl(
      EndEvaluation _value, $Res Function(EndEvaluation) _then)
      : super(_value, (v) => _then(v as EndEvaluation));

  @override
  EndEvaluation get _value => super._value as EndEvaluation;
}

/// @nodoc

class _$EndEvaluation implements EndEvaluation {
  const _$EndEvaluation();

  @override
  String toString() {
    return 'BoardEvent.endEvaluation()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is EndEvaluation);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(int index, BoardDirection direction) move,
    required TResult Function() endMove,
    required TResult Function() evaluate,
    required TResult Function() endEvaluation,
    required TResult Function() fill,
  }) {
    return endEvaluation();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(int index, BoardDirection direction)? move,
    TResult Function()? endMove,
    TResult Function()? evaluate,
    TResult Function()? endEvaluation,
    TResult Function()? fill,
  }) {
    return endEvaluation?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(int index, BoardDirection direction)? move,
    TResult Function()? endMove,
    TResult Function()? evaluate,
    TResult Function()? endEvaluation,
    TResult Function()? fill,
    required TResult orElse(),
  }) {
    if (endEvaluation != null) {
      return endEvaluation();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(Move value) move,
    required TResult Function(EndMove value) endMove,
    required TResult Function(Evaluate value) evaluate,
    required TResult Function(EndEvaluation value) endEvaluation,
    required TResult Function(Fill value) fill,
  }) {
    return endEvaluation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(Move value)? move,
    TResult Function(EndMove value)? endMove,
    TResult Function(Evaluate value)? evaluate,
    TResult Function(EndEvaluation value)? endEvaluation,
    TResult Function(Fill value)? fill,
  }) {
    return endEvaluation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(Move value)? move,
    TResult Function(EndMove value)? endMove,
    TResult Function(Evaluate value)? evaluate,
    TResult Function(EndEvaluation value)? endEvaluation,
    TResult Function(Fill value)? fill,
    required TResult orElse(),
  }) {
    if (endEvaluation != null) {
      return endEvaluation(this);
    }
    return orElse();
  }
}

abstract class EndEvaluation implements BoardEvent {
  const factory EndEvaluation() = _$EndEvaluation;
}

/// @nodoc
abstract class $FillCopyWith<$Res> {
  factory $FillCopyWith(Fill value, $Res Function(Fill) then) =
      _$FillCopyWithImpl<$Res>;
}

/// @nodoc
class _$FillCopyWithImpl<$Res> extends _$BoardEventCopyWithImpl<$Res>
    implements $FillCopyWith<$Res> {
  _$FillCopyWithImpl(Fill _value, $Res Function(Fill) _then)
      : super(_value, (v) => _then(v as Fill));

  @override
  Fill get _value => super._value as Fill;
}

/// @nodoc

class _$Fill implements Fill {
  const _$Fill();

  @override
  String toString() {
    return 'BoardEvent.fill()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Fill);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(int index, BoardDirection direction) move,
    required TResult Function() endMove,
    required TResult Function() evaluate,
    required TResult Function() endEvaluation,
    required TResult Function() fill,
  }) {
    return fill();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(int index, BoardDirection direction)? move,
    TResult Function()? endMove,
    TResult Function()? evaluate,
    TResult Function()? endEvaluation,
    TResult Function()? fill,
  }) {
    return fill?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(int index, BoardDirection direction)? move,
    TResult Function()? endMove,
    TResult Function()? evaluate,
    TResult Function()? endEvaluation,
    TResult Function()? fill,
    required TResult orElse(),
  }) {
    if (fill != null) {
      return fill();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(Move value) move,
    required TResult Function(EndMove value) endMove,
    required TResult Function(Evaluate value) evaluate,
    required TResult Function(EndEvaluation value) endEvaluation,
    required TResult Function(Fill value) fill,
  }) {
    return fill(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(Move value)? move,
    TResult Function(EndMove value)? endMove,
    TResult Function(Evaluate value)? evaluate,
    TResult Function(EndEvaluation value)? endEvaluation,
    TResult Function(Fill value)? fill,
  }) {
    return fill?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(Move value)? move,
    TResult Function(EndMove value)? endMove,
    TResult Function(Evaluate value)? evaluate,
    TResult Function(EndEvaluation value)? endEvaluation,
    TResult Function(Fill value)? fill,
    required TResult orElse(),
  }) {
    if (fill != null) {
      return fill(this);
    }
    return orElse();
  }
}

abstract class Fill implements BoardEvent {
  const factory Fill() = _$Fill;
}
