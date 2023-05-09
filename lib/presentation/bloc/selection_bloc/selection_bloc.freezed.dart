// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'selection_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SelectionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) select,
    required TResult Function(int id) unselect,
    required TResult Function() unselectAll,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? select,
    TResult? Function(int id)? unselect,
    TResult? Function()? unselectAll,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? select,
    TResult Function(int id)? unselect,
    TResult Function()? unselectAll,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Select value) select,
    required TResult Function(_Unselect value) unselect,
    required TResult Function(_UnselectAll value) unselectAll,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Select value)? select,
    TResult? Function(_Unselect value)? unselect,
    TResult? Function(_UnselectAll value)? unselectAll,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Select value)? select,
    TResult Function(_Unselect value)? unselect,
    TResult Function(_UnselectAll value)? unselectAll,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectionEventCopyWith<$Res> {
  factory $SelectionEventCopyWith(
          SelectionEvent value, $Res Function(SelectionEvent) then) =
      _$SelectionEventCopyWithImpl<$Res, SelectionEvent>;
}

/// @nodoc
class _$SelectionEventCopyWithImpl<$Res, $Val extends SelectionEvent>
    implements $SelectionEventCopyWith<$Res> {
  _$SelectionEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_SelectCopyWith<$Res> {
  factory _$$_SelectCopyWith(_$_Select value, $Res Function(_$_Select) then) =
      __$$_SelectCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$_SelectCopyWithImpl<$Res>
    extends _$SelectionEventCopyWithImpl<$Res, _$_Select>
    implements _$$_SelectCopyWith<$Res> {
  __$$_SelectCopyWithImpl(_$_Select _value, $Res Function(_$_Select) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_Select(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Select implements _Select {
  const _$_Select(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'SelectionEvent.select(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Select &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SelectCopyWith<_$_Select> get copyWith =>
      __$$_SelectCopyWithImpl<_$_Select>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) select,
    required TResult Function(int id) unselect,
    required TResult Function() unselectAll,
  }) {
    return select(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? select,
    TResult? Function(int id)? unselect,
    TResult? Function()? unselectAll,
  }) {
    return select?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? select,
    TResult Function(int id)? unselect,
    TResult Function()? unselectAll,
    required TResult orElse(),
  }) {
    if (select != null) {
      return select(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Select value) select,
    required TResult Function(_Unselect value) unselect,
    required TResult Function(_UnselectAll value) unselectAll,
  }) {
    return select(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Select value)? select,
    TResult? Function(_Unselect value)? unselect,
    TResult? Function(_UnselectAll value)? unselectAll,
  }) {
    return select?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Select value)? select,
    TResult Function(_Unselect value)? unselect,
    TResult Function(_UnselectAll value)? unselectAll,
    required TResult orElse(),
  }) {
    if (select != null) {
      return select(this);
    }
    return orElse();
  }
}

abstract class _Select implements SelectionEvent {
  const factory _Select(final int id) = _$_Select;

  int get id;
  @JsonKey(ignore: true)
  _$$_SelectCopyWith<_$_Select> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UnselectCopyWith<$Res> {
  factory _$$_UnselectCopyWith(
          _$_Unselect value, $Res Function(_$_Unselect) then) =
      __$$_UnselectCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$_UnselectCopyWithImpl<$Res>
    extends _$SelectionEventCopyWithImpl<$Res, _$_Unselect>
    implements _$$_UnselectCopyWith<$Res> {
  __$$_UnselectCopyWithImpl(
      _$_Unselect _value, $Res Function(_$_Unselect) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_Unselect(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Unselect implements _Unselect {
  const _$_Unselect(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'SelectionEvent.unselect(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Unselect &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UnselectCopyWith<_$_Unselect> get copyWith =>
      __$$_UnselectCopyWithImpl<_$_Unselect>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) select,
    required TResult Function(int id) unselect,
    required TResult Function() unselectAll,
  }) {
    return unselect(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? select,
    TResult? Function(int id)? unselect,
    TResult? Function()? unselectAll,
  }) {
    return unselect?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? select,
    TResult Function(int id)? unselect,
    TResult Function()? unselectAll,
    required TResult orElse(),
  }) {
    if (unselect != null) {
      return unselect(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Select value) select,
    required TResult Function(_Unselect value) unselect,
    required TResult Function(_UnselectAll value) unselectAll,
  }) {
    return unselect(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Select value)? select,
    TResult? Function(_Unselect value)? unselect,
    TResult? Function(_UnselectAll value)? unselectAll,
  }) {
    return unselect?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Select value)? select,
    TResult Function(_Unselect value)? unselect,
    TResult Function(_UnselectAll value)? unselectAll,
    required TResult orElse(),
  }) {
    if (unselect != null) {
      return unselect(this);
    }
    return orElse();
  }
}

abstract class _Unselect implements SelectionEvent {
  const factory _Unselect(final int id) = _$_Unselect;

  int get id;
  @JsonKey(ignore: true)
  _$$_UnselectCopyWith<_$_Unselect> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UnselectAllCopyWith<$Res> {
  factory _$$_UnselectAllCopyWith(
          _$_UnselectAll value, $Res Function(_$_UnselectAll) then) =
      __$$_UnselectAllCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UnselectAllCopyWithImpl<$Res>
    extends _$SelectionEventCopyWithImpl<$Res, _$_UnselectAll>
    implements _$$_UnselectAllCopyWith<$Res> {
  __$$_UnselectAllCopyWithImpl(
      _$_UnselectAll _value, $Res Function(_$_UnselectAll) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_UnselectAll implements _UnselectAll {
  const _$_UnselectAll();

  @override
  String toString() {
    return 'SelectionEvent.unselectAll()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_UnselectAll);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) select,
    required TResult Function(int id) unselect,
    required TResult Function() unselectAll,
  }) {
    return unselectAll();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? select,
    TResult? Function(int id)? unselect,
    TResult? Function()? unselectAll,
  }) {
    return unselectAll?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? select,
    TResult Function(int id)? unselect,
    TResult Function()? unselectAll,
    required TResult orElse(),
  }) {
    if (unselectAll != null) {
      return unselectAll();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Select value) select,
    required TResult Function(_Unselect value) unselect,
    required TResult Function(_UnselectAll value) unselectAll,
  }) {
    return unselectAll(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Select value)? select,
    TResult? Function(_Unselect value)? unselect,
    TResult? Function(_UnselectAll value)? unselectAll,
  }) {
    return unselectAll?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Select value)? select,
    TResult Function(_Unselect value)? unselect,
    TResult Function(_UnselectAll value)? unselectAll,
    required TResult orElse(),
  }) {
    if (unselectAll != null) {
      return unselectAll(this);
    }
    return orElse();
  }
}

abstract class _UnselectAll implements SelectionEvent {
  const factory _UnselectAll() = _$_UnselectAll;
}

/// @nodoc
mixin _$SelectionState {
  List<int> get ids => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<int> ids) idsSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<int> ids)? idsSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<int> ids)? idsSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IdsSelected value) idsSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_IdsSelected value)? idsSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IdsSelected value)? idsSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SelectionStateCopyWith<SelectionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectionStateCopyWith<$Res> {
  factory $SelectionStateCopyWith(
          SelectionState value, $Res Function(SelectionState) then) =
      _$SelectionStateCopyWithImpl<$Res, SelectionState>;
  @useResult
  $Res call({List<int> ids});
}

/// @nodoc
class _$SelectionStateCopyWithImpl<$Res, $Val extends SelectionState>
    implements $SelectionStateCopyWith<$Res> {
  _$SelectionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ids = null,
  }) {
    return _then(_value.copyWith(
      ids: null == ids
          ? _value.ids
          : ids // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_IdsSelectedCopyWith<$Res>
    implements $SelectionStateCopyWith<$Res> {
  factory _$$_IdsSelectedCopyWith(
          _$_IdsSelected value, $Res Function(_$_IdsSelected) then) =
      __$$_IdsSelectedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<int> ids});
}

/// @nodoc
class __$$_IdsSelectedCopyWithImpl<$Res>
    extends _$SelectionStateCopyWithImpl<$Res, _$_IdsSelected>
    implements _$$_IdsSelectedCopyWith<$Res> {
  __$$_IdsSelectedCopyWithImpl(
      _$_IdsSelected _value, $Res Function(_$_IdsSelected) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ids = null,
  }) {
    return _then(_$_IdsSelected(
      null == ids
          ? _value._ids
          : ids // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

class _$_IdsSelected implements _IdsSelected {
  const _$_IdsSelected(final List<int> ids) : _ids = ids;

  final List<int> _ids;
  @override
  List<int> get ids {
    if (_ids is EqualUnmodifiableListView) return _ids;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ids);
  }

  @override
  String toString() {
    return 'SelectionState.idsSelected(ids: $ids)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IdsSelected &&
            const DeepCollectionEquality().equals(other._ids, _ids));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_ids));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IdsSelectedCopyWith<_$_IdsSelected> get copyWith =>
      __$$_IdsSelectedCopyWithImpl<_$_IdsSelected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<int> ids) idsSelected,
  }) {
    return idsSelected(ids);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<int> ids)? idsSelected,
  }) {
    return idsSelected?.call(ids);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<int> ids)? idsSelected,
    required TResult orElse(),
  }) {
    if (idsSelected != null) {
      return idsSelected(ids);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IdsSelected value) idsSelected,
  }) {
    return idsSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_IdsSelected value)? idsSelected,
  }) {
    return idsSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IdsSelected value)? idsSelected,
    required TResult orElse(),
  }) {
    if (idsSelected != null) {
      return idsSelected(this);
    }
    return orElse();
  }
}

abstract class _IdsSelected implements SelectionState {
  const factory _IdsSelected(final List<int> ids) = _$_IdsSelected;

  @override
  List<int> get ids;
  @override
  @JsonKey(ignore: true)
  _$$_IdsSelectedCopyWith<_$_IdsSelected> get copyWith =>
      throw _privateConstructorUsedError;
}
