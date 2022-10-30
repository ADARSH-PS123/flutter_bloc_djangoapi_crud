// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'my_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MyEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Models model) create,
    required TResult Function() read,
    required TResult Function(Models model) update,
    required TResult Function(int id) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Models model)? create,
    TResult? Function()? read,
    TResult? Function(Models model)? update,
    TResult? Function(int id)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Models model)? create,
    TResult Function()? read,
    TResult Function(Models model)? update,
    TResult Function(int id)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Create value) create,
    required TResult Function(_Read value) read,
    required TResult Function(_Update value) update,
    required TResult Function(_Delete value) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Create value)? create,
    TResult? Function(_Read value)? read,
    TResult? Function(_Update value)? update,
    TResult? Function(_Delete value)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Create value)? create,
    TResult Function(_Read value)? read,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyEventCopyWith<$Res> {
  factory $MyEventCopyWith(MyEvent value, $Res Function(MyEvent) then) =
      _$MyEventCopyWithImpl<$Res, MyEvent>;
}

/// @nodoc
class _$MyEventCopyWithImpl<$Res, $Val extends MyEvent>
    implements $MyEventCopyWith<$Res> {
  _$MyEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_CreateCopyWith<$Res> {
  factory _$$_CreateCopyWith(_$_Create value, $Res Function(_$_Create) then) =
      __$$_CreateCopyWithImpl<$Res>;
  @useResult
  $Res call({Models model});
}

/// @nodoc
class __$$_CreateCopyWithImpl<$Res>
    extends _$MyEventCopyWithImpl<$Res, _$_Create>
    implements _$$_CreateCopyWith<$Res> {
  __$$_CreateCopyWithImpl(_$_Create _value, $Res Function(_$_Create) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_$_Create(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as Models,
    ));
  }
}

/// @nodoc

class _$_Create with DiagnosticableTreeMixin implements _Create {
  const _$_Create({required this.model});

  @override
  final Models model;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MyEvent.create(model: $model)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MyEvent.create'))
      ..add(DiagnosticsProperty('model', model));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Create &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateCopyWith<_$_Create> get copyWith =>
      __$$_CreateCopyWithImpl<_$_Create>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Models model) create,
    required TResult Function() read,
    required TResult Function(Models model) update,
    required TResult Function(int id) delete,
  }) {
    return create(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Models model)? create,
    TResult? Function()? read,
    TResult? Function(Models model)? update,
    TResult? Function(int id)? delete,
  }) {
    return create?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Models model)? create,
    TResult Function()? read,
    TResult Function(Models model)? update,
    TResult Function(int id)? delete,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Create value) create,
    required TResult Function(_Read value) read,
    required TResult Function(_Update value) update,
    required TResult Function(_Delete value) delete,
  }) {
    return create(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Create value)? create,
    TResult? Function(_Read value)? read,
    TResult? Function(_Update value)? update,
    TResult? Function(_Delete value)? delete,
  }) {
    return create?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Create value)? create,
    TResult Function(_Read value)? read,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(this);
    }
    return orElse();
  }
}

abstract class _Create implements MyEvent {
  const factory _Create({required final Models model}) = _$_Create;

  Models get model;
  @JsonKey(ignore: true)
  _$$_CreateCopyWith<_$_Create> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ReadCopyWith<$Res> {
  factory _$$_ReadCopyWith(_$_Read value, $Res Function(_$_Read) then) =
      __$$_ReadCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ReadCopyWithImpl<$Res> extends _$MyEventCopyWithImpl<$Res, _$_Read>
    implements _$$_ReadCopyWith<$Res> {
  __$$_ReadCopyWithImpl(_$_Read _value, $Res Function(_$_Read) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Read with DiagnosticableTreeMixin implements _Read {
  const _$_Read();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MyEvent.read()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'MyEvent.read'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Read);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Models model) create,
    required TResult Function() read,
    required TResult Function(Models model) update,
    required TResult Function(int id) delete,
  }) {
    return read();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Models model)? create,
    TResult? Function()? read,
    TResult? Function(Models model)? update,
    TResult? Function(int id)? delete,
  }) {
    return read?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Models model)? create,
    TResult Function()? read,
    TResult Function(Models model)? update,
    TResult Function(int id)? delete,
    required TResult orElse(),
  }) {
    if (read != null) {
      return read();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Create value) create,
    required TResult Function(_Read value) read,
    required TResult Function(_Update value) update,
    required TResult Function(_Delete value) delete,
  }) {
    return read(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Create value)? create,
    TResult? Function(_Read value)? read,
    TResult? Function(_Update value)? update,
    TResult? Function(_Delete value)? delete,
  }) {
    return read?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Create value)? create,
    TResult Function(_Read value)? read,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (read != null) {
      return read(this);
    }
    return orElse();
  }
}

abstract class _Read implements MyEvent {
  const factory _Read() = _$_Read;
}

/// @nodoc
abstract class _$$_UpdateCopyWith<$Res> {
  factory _$$_UpdateCopyWith(_$_Update value, $Res Function(_$_Update) then) =
      __$$_UpdateCopyWithImpl<$Res>;
  @useResult
  $Res call({Models model});
}

/// @nodoc
class __$$_UpdateCopyWithImpl<$Res>
    extends _$MyEventCopyWithImpl<$Res, _$_Update>
    implements _$$_UpdateCopyWith<$Res> {
  __$$_UpdateCopyWithImpl(_$_Update _value, $Res Function(_$_Update) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_$_Update(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as Models,
    ));
  }
}

/// @nodoc

class _$_Update with DiagnosticableTreeMixin implements _Update {
  const _$_Update({required this.model});

  @override
  final Models model;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MyEvent.update(model: $model)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MyEvent.update'))
      ..add(DiagnosticsProperty('model', model));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Update &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateCopyWith<_$_Update> get copyWith =>
      __$$_UpdateCopyWithImpl<_$_Update>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Models model) create,
    required TResult Function() read,
    required TResult Function(Models model) update,
    required TResult Function(int id) delete,
  }) {
    return update(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Models model)? create,
    TResult? Function()? read,
    TResult? Function(Models model)? update,
    TResult? Function(int id)? delete,
  }) {
    return update?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Models model)? create,
    TResult Function()? read,
    TResult Function(Models model)? update,
    TResult Function(int id)? delete,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Create value) create,
    required TResult Function(_Read value) read,
    required TResult Function(_Update value) update,
    required TResult Function(_Delete value) delete,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Create value)? create,
    TResult? Function(_Read value)? read,
    TResult? Function(_Update value)? update,
    TResult? Function(_Delete value)? delete,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Create value)? create,
    TResult Function(_Read value)? read,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class _Update implements MyEvent {
  const factory _Update({required final Models model}) = _$_Update;

  Models get model;
  @JsonKey(ignore: true)
  _$$_UpdateCopyWith<_$_Update> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DeleteCopyWith<$Res> {
  factory _$$_DeleteCopyWith(_$_Delete value, $Res Function(_$_Delete) then) =
      __$$_DeleteCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$_DeleteCopyWithImpl<$Res>
    extends _$MyEventCopyWithImpl<$Res, _$_Delete>
    implements _$$_DeleteCopyWith<$Res> {
  __$$_DeleteCopyWithImpl(_$_Delete _value, $Res Function(_$_Delete) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_Delete(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Delete with DiagnosticableTreeMixin implements _Delete {
  const _$_Delete({required this.id});

  @override
  final int id;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MyEvent.delete(id: $id)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MyEvent.delete'))
      ..add(DiagnosticsProperty('id', id));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Delete &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeleteCopyWith<_$_Delete> get copyWith =>
      __$$_DeleteCopyWithImpl<_$_Delete>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Models model) create,
    required TResult Function() read,
    required TResult Function(Models model) update,
    required TResult Function(int id) delete,
  }) {
    return delete(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Models model)? create,
    TResult? Function()? read,
    TResult? Function(Models model)? update,
    TResult? Function(int id)? delete,
  }) {
    return delete?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Models model)? create,
    TResult Function()? read,
    TResult Function(Models model)? update,
    TResult Function(int id)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Create value) create,
    required TResult Function(_Read value) read,
    required TResult Function(_Update value) update,
    required TResult Function(_Delete value) delete,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Create value)? create,
    TResult? Function(_Read value)? read,
    TResult? Function(_Update value)? update,
    TResult? Function(_Delete value)? delete,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Create value)? create,
    TResult Function(_Read value)? read,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class _Delete implements MyEvent {
  const factory _Delete({required final int id}) = _$_Delete;

  int get id;
  @JsonKey(ignore: true)
  _$$_DeleteCopyWith<_$_Delete> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MyState {
  List<Models> get lModels => throw _privateConstructorUsedError;
  Option<Either<Failure, String>> get optionSuccessFailure =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MyStateCopyWith<MyState> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyStateCopyWith<$Res> {
  factory $MyStateCopyWith(MyState value, $Res Function(MyState) then) =
      _$MyStateCopyWithImpl<$Res, MyState>;
  @useResult
  $Res call(
      {List<Models> lModels,
      Option<Either<Failure, String>> optionSuccessFailure});
}

/// @nodoc
class _$MyStateCopyWithImpl<$Res, $Val extends MyState>
    implements $MyStateCopyWith<$Res> {
  _$MyStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lModels = null,
    Object? optionSuccessFailure = null,
  }) {
    return _then(_value.copyWith(
      lModels: null == lModels
          ? _value.lModels
          : lModels // ignore: cast_nullable_to_non_nullable
              as List<Models>,
      optionSuccessFailure: null == optionSuccessFailure
          ? _value.optionSuccessFailure
          : optionSuccessFailure // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, String>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_myStateCopyWith<$Res> implements $MyStateCopyWith<$Res> {
  factory _$$_myStateCopyWith(
          _$_myState value, $Res Function(_$_myState) then) =
      __$$_myStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Models> lModels,
      Option<Either<Failure, String>> optionSuccessFailure});
}

/// @nodoc
class __$$_myStateCopyWithImpl<$Res>
    extends _$MyStateCopyWithImpl<$Res, _$_myState>
    implements _$$_myStateCopyWith<$Res> {
  __$$_myStateCopyWithImpl(_$_myState _value, $Res Function(_$_myState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lModels = null,
    Object? optionSuccessFailure = null,
  }) {
    return _then(_$_myState(
      lModels: null == lModels
          ? _value._lModels
          : lModels // ignore: cast_nullable_to_non_nullable
              as List<Models>,
      optionSuccessFailure: null == optionSuccessFailure
          ? _value.optionSuccessFailure
          : optionSuccessFailure // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, String>>,
    ));
  }
}

/// @nodoc

class _$_myState with DiagnosticableTreeMixin implements _myState {
  const _$_myState(
      {required final List<Models> lModels, required this.optionSuccessFailure})
      : _lModels = lModels;

  final List<Models> _lModels;
  @override
  List<Models> get lModels {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_lModels);
  }

  @override
  final Option<Either<Failure, String>> optionSuccessFailure;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MyState(lModels: $lModels, optionSuccessFailure: $optionSuccessFailure)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MyState'))
      ..add(DiagnosticsProperty('lModels', lModels))
      ..add(DiagnosticsProperty('optionSuccessFailure', optionSuccessFailure));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_myState &&
            const DeepCollectionEquality().equals(other._lModels, _lModels) &&
            (identical(other.optionSuccessFailure, optionSuccessFailure) ||
                other.optionSuccessFailure == optionSuccessFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_lModels), optionSuccessFailure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_myStateCopyWith<_$_myState> get copyWith =>
      __$$_myStateCopyWithImpl<_$_myState>(this, _$identity);
}

abstract class _myState implements MyState {
  const factory _myState(
      {required final List<Models> lModels,
      required final Option<Either<Failure, String>>
          optionSuccessFailure}) = _$_myState;

  @override
  List<Models> get lModels;
  @override
  Option<Either<Failure, String>> get optionSuccessFailure;
  @override
  @JsonKey(ignore: true)
  _$$_myStateCopyWith<_$_myState> get copyWith =>
      throw _privateConstructorUsedError;
}
