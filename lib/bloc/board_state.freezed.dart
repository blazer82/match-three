// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'board_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$BoardStateTearOff {
  const _$BoardStateTearOff();

  _BoardState call(
      {required BoardStatus status,
      required List<int> board,
      required List<int> spareBoard,
      List<int>? pendingBoard,
      required List<int> currentMove,
      required List<int> positionsToEliminate,
      required List<List<int>> fillAnimations}) {
    return _BoardState(
      status: status,
      board: board,
      spareBoard: spareBoard,
      pendingBoard: pendingBoard,
      currentMove: currentMove,
      positionsToEliminate: positionsToEliminate,
      fillAnimations: fillAnimations,
    );
  }
}

/// @nodoc
const $BoardState = _$BoardStateTearOff();

/// @nodoc
mixin _$BoardState {
  BoardStatus get status => throw _privateConstructorUsedError;
  List<int> get board => throw _privateConstructorUsedError;
  List<int> get spareBoard => throw _privateConstructorUsedError;
  List<int>? get pendingBoard => throw _privateConstructorUsedError;
  List<int> get currentMove => throw _privateConstructorUsedError;
  List<int> get positionsToEliminate => throw _privateConstructorUsedError;
  List<List<int>> get fillAnimations => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BoardStateCopyWith<BoardState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BoardStateCopyWith<$Res> {
  factory $BoardStateCopyWith(
          BoardState value, $Res Function(BoardState) then) =
      _$BoardStateCopyWithImpl<$Res>;
  $Res call(
      {BoardStatus status,
      List<int> board,
      List<int> spareBoard,
      List<int>? pendingBoard,
      List<int> currentMove,
      List<int> positionsToEliminate,
      List<List<int>> fillAnimations});
}

/// @nodoc
class _$BoardStateCopyWithImpl<$Res> implements $BoardStateCopyWith<$Res> {
  _$BoardStateCopyWithImpl(this._value, this._then);

  final BoardState _value;
  // ignore: unused_field
  final $Res Function(BoardState) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? board = freezed,
    Object? spareBoard = freezed,
    Object? pendingBoard = freezed,
    Object? currentMove = freezed,
    Object? positionsToEliminate = freezed,
    Object? fillAnimations = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BoardStatus,
      board: board == freezed
          ? _value.board
          : board // ignore: cast_nullable_to_non_nullable
              as List<int>,
      spareBoard: spareBoard == freezed
          ? _value.spareBoard
          : spareBoard // ignore: cast_nullable_to_non_nullable
              as List<int>,
      pendingBoard: pendingBoard == freezed
          ? _value.pendingBoard
          : pendingBoard // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      currentMove: currentMove == freezed
          ? _value.currentMove
          : currentMove // ignore: cast_nullable_to_non_nullable
              as List<int>,
      positionsToEliminate: positionsToEliminate == freezed
          ? _value.positionsToEliminate
          : positionsToEliminate // ignore: cast_nullable_to_non_nullable
              as List<int>,
      fillAnimations: fillAnimations == freezed
          ? _value.fillAnimations
          : fillAnimations // ignore: cast_nullable_to_non_nullable
              as List<List<int>>,
    ));
  }
}

/// @nodoc
abstract class _$BoardStateCopyWith<$Res> implements $BoardStateCopyWith<$Res> {
  factory _$BoardStateCopyWith(
          _BoardState value, $Res Function(_BoardState) then) =
      __$BoardStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {BoardStatus status,
      List<int> board,
      List<int> spareBoard,
      List<int>? pendingBoard,
      List<int> currentMove,
      List<int> positionsToEliminate,
      List<List<int>> fillAnimations});
}

/// @nodoc
class __$BoardStateCopyWithImpl<$Res> extends _$BoardStateCopyWithImpl<$Res>
    implements _$BoardStateCopyWith<$Res> {
  __$BoardStateCopyWithImpl(
      _BoardState _value, $Res Function(_BoardState) _then)
      : super(_value, (v) => _then(v as _BoardState));

  @override
  _BoardState get _value => super._value as _BoardState;

  @override
  $Res call({
    Object? status = freezed,
    Object? board = freezed,
    Object? spareBoard = freezed,
    Object? pendingBoard = freezed,
    Object? currentMove = freezed,
    Object? positionsToEliminate = freezed,
    Object? fillAnimations = freezed,
  }) {
    return _then(_BoardState(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BoardStatus,
      board: board == freezed
          ? _value.board
          : board // ignore: cast_nullable_to_non_nullable
              as List<int>,
      spareBoard: spareBoard == freezed
          ? _value.spareBoard
          : spareBoard // ignore: cast_nullable_to_non_nullable
              as List<int>,
      pendingBoard: pendingBoard == freezed
          ? _value.pendingBoard
          : pendingBoard // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      currentMove: currentMove == freezed
          ? _value.currentMove
          : currentMove // ignore: cast_nullable_to_non_nullable
              as List<int>,
      positionsToEliminate: positionsToEliminate == freezed
          ? _value.positionsToEliminate
          : positionsToEliminate // ignore: cast_nullable_to_non_nullable
              as List<int>,
      fillAnimations: fillAnimations == freezed
          ? _value.fillAnimations
          : fillAnimations // ignore: cast_nullable_to_non_nullable
              as List<List<int>>,
    ));
  }
}

/// @nodoc

class _$_BoardState implements _BoardState {
  const _$_BoardState(
      {required this.status,
      required this.board,
      required this.spareBoard,
      this.pendingBoard,
      required this.currentMove,
      required this.positionsToEliminate,
      required this.fillAnimations});

  @override
  final BoardStatus status;
  @override
  final List<int> board;
  @override
  final List<int> spareBoard;
  @override
  final List<int>? pendingBoard;
  @override
  final List<int> currentMove;
  @override
  final List<int> positionsToEliminate;
  @override
  final List<List<int>> fillAnimations;

  @override
  String toString() {
    return 'BoardState(status: $status, board: $board, spareBoard: $spareBoard, pendingBoard: $pendingBoard, currentMove: $currentMove, positionsToEliminate: $positionsToEliminate, fillAnimations: $fillAnimations)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BoardState &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.board, board) &&
            const DeepCollectionEquality()
                .equals(other.spareBoard, spareBoard) &&
            const DeepCollectionEquality()
                .equals(other.pendingBoard, pendingBoard) &&
            const DeepCollectionEquality()
                .equals(other.currentMove, currentMove) &&
            const DeepCollectionEquality()
                .equals(other.positionsToEliminate, positionsToEliminate) &&
            const DeepCollectionEquality()
                .equals(other.fillAnimations, fillAnimations));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(board),
      const DeepCollectionEquality().hash(spareBoard),
      const DeepCollectionEquality().hash(pendingBoard),
      const DeepCollectionEquality().hash(currentMove),
      const DeepCollectionEquality().hash(positionsToEliminate),
      const DeepCollectionEquality().hash(fillAnimations));

  @JsonKey(ignore: true)
  @override
  _$BoardStateCopyWith<_BoardState> get copyWith =>
      __$BoardStateCopyWithImpl<_BoardState>(this, _$identity);
}

abstract class _BoardState implements BoardState {
  const factory _BoardState(
      {required BoardStatus status,
      required List<int> board,
      required List<int> spareBoard,
      List<int>? pendingBoard,
      required List<int> currentMove,
      required List<int> positionsToEliminate,
      required List<List<int>> fillAnimations}) = _$_BoardState;

  @override
  BoardStatus get status;
  @override
  List<int> get board;
  @override
  List<int> get spareBoard;
  @override
  List<int>? get pendingBoard;
  @override
  List<int> get currentMove;
  @override
  List<int> get positionsToEliminate;
  @override
  List<List<int>> get fillAnimations;
  @override
  @JsonKey(ignore: true)
  _$BoardStateCopyWith<_BoardState> get copyWith =>
      throw _privateConstructorUsedError;
}
