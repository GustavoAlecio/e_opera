// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'intro_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$IntroState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() error,
    required TResult Function() loading,
    required TResult Function(
            List<Farm> farms,
            Farm? selectedFarm,
            List<Harvest> harvests,
            Harvest? selectedHarvest,
            List<Field> fields,
            Field? selectedField)
        loaded,
    required TResult Function() success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? error,
    TResult? Function()? loading,
    TResult? Function(
            List<Farm> farms,
            Farm? selectedFarm,
            List<Harvest> harvests,
            Harvest? selectedHarvest,
            List<Field> fields,
            Field? selectedField)?
        loaded,
    TResult? Function()? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? error,
    TResult Function()? loading,
    TResult Function(
            List<Farm> farms,
            Farm? selectedFarm,
            List<Harvest> harvests,
            Harvest? selectedHarvest,
            List<Field> fields,
            Field? selectedField)?
        loaded,
    TResult Function()? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialIntro value) initial,
    required TResult Function(ErrorIntro value) error,
    required TResult Function(LoadingIntro value) loading,
    required TResult Function(LoadedIntro value) loaded,
    required TResult Function(SuccessIntro value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialIntro value)? initial,
    TResult? Function(ErrorIntro value)? error,
    TResult? Function(LoadingIntro value)? loading,
    TResult? Function(LoadedIntro value)? loaded,
    TResult? Function(SuccessIntro value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialIntro value)? initial,
    TResult Function(ErrorIntro value)? error,
    TResult Function(LoadingIntro value)? loading,
    TResult Function(LoadedIntro value)? loaded,
    TResult Function(SuccessIntro value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IntroStateCopyWith<$Res> {
  factory $IntroStateCopyWith(
          IntroState value, $Res Function(IntroState) then) =
      _$IntroStateCopyWithImpl<$Res, IntroState>;
}

/// @nodoc
class _$IntroStateCopyWithImpl<$Res, $Val extends IntroState>
    implements $IntroStateCopyWith<$Res> {
  _$IntroStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialIntroImplCopyWith<$Res> {
  factory _$$InitialIntroImplCopyWith(
          _$InitialIntroImpl value, $Res Function(_$InitialIntroImpl) then) =
      __$$InitialIntroImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialIntroImplCopyWithImpl<$Res>
    extends _$IntroStateCopyWithImpl<$Res, _$InitialIntroImpl>
    implements _$$InitialIntroImplCopyWith<$Res> {
  __$$InitialIntroImplCopyWithImpl(
      _$InitialIntroImpl _value, $Res Function(_$InitialIntroImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialIntroImpl implements InitialIntro {
  _$InitialIntroImpl();

  @override
  String toString() {
    return 'IntroState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialIntroImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() error,
    required TResult Function() loading,
    required TResult Function(
            List<Farm> farms,
            Farm? selectedFarm,
            List<Harvest> harvests,
            Harvest? selectedHarvest,
            List<Field> fields,
            Field? selectedField)
        loaded,
    required TResult Function() success,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? error,
    TResult? Function()? loading,
    TResult? Function(
            List<Farm> farms,
            Farm? selectedFarm,
            List<Harvest> harvests,
            Harvest? selectedHarvest,
            List<Field> fields,
            Field? selectedField)?
        loaded,
    TResult? Function()? success,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? error,
    TResult Function()? loading,
    TResult Function(
            List<Farm> farms,
            Farm? selectedFarm,
            List<Harvest> harvests,
            Harvest? selectedHarvest,
            List<Field> fields,
            Field? selectedField)?
        loaded,
    TResult Function()? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialIntro value) initial,
    required TResult Function(ErrorIntro value) error,
    required TResult Function(LoadingIntro value) loading,
    required TResult Function(LoadedIntro value) loaded,
    required TResult Function(SuccessIntro value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialIntro value)? initial,
    TResult? Function(ErrorIntro value)? error,
    TResult? Function(LoadingIntro value)? loading,
    TResult? Function(LoadedIntro value)? loaded,
    TResult? Function(SuccessIntro value)? success,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialIntro value)? initial,
    TResult Function(ErrorIntro value)? error,
    TResult Function(LoadingIntro value)? loading,
    TResult Function(LoadedIntro value)? loaded,
    TResult Function(SuccessIntro value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialIntro implements IntroState {
  factory InitialIntro() = _$InitialIntroImpl;
}

/// @nodoc
abstract class _$$ErrorIntroImplCopyWith<$Res> {
  factory _$$ErrorIntroImplCopyWith(
          _$ErrorIntroImpl value, $Res Function(_$ErrorIntroImpl) then) =
      __$$ErrorIntroImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ErrorIntroImplCopyWithImpl<$Res>
    extends _$IntroStateCopyWithImpl<$Res, _$ErrorIntroImpl>
    implements _$$ErrorIntroImplCopyWith<$Res> {
  __$$ErrorIntroImplCopyWithImpl(
      _$ErrorIntroImpl _value, $Res Function(_$ErrorIntroImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ErrorIntroImpl implements ErrorIntro {
  _$ErrorIntroImpl();

  @override
  String toString() {
    return 'IntroState.error()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ErrorIntroImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() error,
    required TResult Function() loading,
    required TResult Function(
            List<Farm> farms,
            Farm? selectedFarm,
            List<Harvest> harvests,
            Harvest? selectedHarvest,
            List<Field> fields,
            Field? selectedField)
        loaded,
    required TResult Function() success,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? error,
    TResult? Function()? loading,
    TResult? Function(
            List<Farm> farms,
            Farm? selectedFarm,
            List<Harvest> harvests,
            Harvest? selectedHarvest,
            List<Field> fields,
            Field? selectedField)?
        loaded,
    TResult? Function()? success,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? error,
    TResult Function()? loading,
    TResult Function(
            List<Farm> farms,
            Farm? selectedFarm,
            List<Harvest> harvests,
            Harvest? selectedHarvest,
            List<Field> fields,
            Field? selectedField)?
        loaded,
    TResult Function()? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialIntro value) initial,
    required TResult Function(ErrorIntro value) error,
    required TResult Function(LoadingIntro value) loading,
    required TResult Function(LoadedIntro value) loaded,
    required TResult Function(SuccessIntro value) success,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialIntro value)? initial,
    TResult? Function(ErrorIntro value)? error,
    TResult? Function(LoadingIntro value)? loading,
    TResult? Function(LoadedIntro value)? loaded,
    TResult? Function(SuccessIntro value)? success,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialIntro value)? initial,
    TResult Function(ErrorIntro value)? error,
    TResult Function(LoadingIntro value)? loading,
    TResult Function(LoadedIntro value)? loaded,
    TResult Function(SuccessIntro value)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorIntro implements IntroState {
  factory ErrorIntro() = _$ErrorIntroImpl;
}

/// @nodoc
abstract class _$$LoadingIntroImplCopyWith<$Res> {
  factory _$$LoadingIntroImplCopyWith(
          _$LoadingIntroImpl value, $Res Function(_$LoadingIntroImpl) then) =
      __$$LoadingIntroImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingIntroImplCopyWithImpl<$Res>
    extends _$IntroStateCopyWithImpl<$Res, _$LoadingIntroImpl>
    implements _$$LoadingIntroImplCopyWith<$Res> {
  __$$LoadingIntroImplCopyWithImpl(
      _$LoadingIntroImpl _value, $Res Function(_$LoadingIntroImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingIntroImpl implements LoadingIntro {
  _$LoadingIntroImpl();

  @override
  String toString() {
    return 'IntroState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingIntroImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() error,
    required TResult Function() loading,
    required TResult Function(
            List<Farm> farms,
            Farm? selectedFarm,
            List<Harvest> harvests,
            Harvest? selectedHarvest,
            List<Field> fields,
            Field? selectedField)
        loaded,
    required TResult Function() success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? error,
    TResult? Function()? loading,
    TResult? Function(
            List<Farm> farms,
            Farm? selectedFarm,
            List<Harvest> harvests,
            Harvest? selectedHarvest,
            List<Field> fields,
            Field? selectedField)?
        loaded,
    TResult? Function()? success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? error,
    TResult Function()? loading,
    TResult Function(
            List<Farm> farms,
            Farm? selectedFarm,
            List<Harvest> harvests,
            Harvest? selectedHarvest,
            List<Field> fields,
            Field? selectedField)?
        loaded,
    TResult Function()? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialIntro value) initial,
    required TResult Function(ErrorIntro value) error,
    required TResult Function(LoadingIntro value) loading,
    required TResult Function(LoadedIntro value) loaded,
    required TResult Function(SuccessIntro value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialIntro value)? initial,
    TResult? Function(ErrorIntro value)? error,
    TResult? Function(LoadingIntro value)? loading,
    TResult? Function(LoadedIntro value)? loaded,
    TResult? Function(SuccessIntro value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialIntro value)? initial,
    TResult Function(ErrorIntro value)? error,
    TResult Function(LoadingIntro value)? loading,
    TResult Function(LoadedIntro value)? loaded,
    TResult Function(SuccessIntro value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingIntro implements IntroState {
  factory LoadingIntro() = _$LoadingIntroImpl;
}

/// @nodoc
abstract class _$$LoadedIntroImplCopyWith<$Res> {
  factory _$$LoadedIntroImplCopyWith(
          _$LoadedIntroImpl value, $Res Function(_$LoadedIntroImpl) then) =
      __$$LoadedIntroImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<Farm> farms,
      Farm? selectedFarm,
      List<Harvest> harvests,
      Harvest? selectedHarvest,
      List<Field> fields,
      Field? selectedField});

  $FarmCopyWith<$Res>? get selectedFarm;
  $HarvestCopyWith<$Res>? get selectedHarvest;
  $FieldCopyWith<$Res>? get selectedField;
}

/// @nodoc
class __$$LoadedIntroImplCopyWithImpl<$Res>
    extends _$IntroStateCopyWithImpl<$Res, _$LoadedIntroImpl>
    implements _$$LoadedIntroImplCopyWith<$Res> {
  __$$LoadedIntroImplCopyWithImpl(
      _$LoadedIntroImpl _value, $Res Function(_$LoadedIntroImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? farms = null,
    Object? selectedFarm = freezed,
    Object? harvests = null,
    Object? selectedHarvest = freezed,
    Object? fields = null,
    Object? selectedField = freezed,
  }) {
    return _then(_$LoadedIntroImpl(
      farms: null == farms
          ? _value._farms
          : farms // ignore: cast_nullable_to_non_nullable
              as List<Farm>,
      selectedFarm: freezed == selectedFarm
          ? _value.selectedFarm
          : selectedFarm // ignore: cast_nullable_to_non_nullable
              as Farm?,
      harvests: null == harvests
          ? _value._harvests
          : harvests // ignore: cast_nullable_to_non_nullable
              as List<Harvest>,
      selectedHarvest: freezed == selectedHarvest
          ? _value.selectedHarvest
          : selectedHarvest // ignore: cast_nullable_to_non_nullable
              as Harvest?,
      fields: null == fields
          ? _value._fields
          : fields // ignore: cast_nullable_to_non_nullable
              as List<Field>,
      selectedField: freezed == selectedField
          ? _value.selectedField
          : selectedField // ignore: cast_nullable_to_non_nullable
              as Field?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $FarmCopyWith<$Res>? get selectedFarm {
    if (_value.selectedFarm == null) {
      return null;
    }

    return $FarmCopyWith<$Res>(_value.selectedFarm!, (value) {
      return _then(_value.copyWith(selectedFarm: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $HarvestCopyWith<$Res>? get selectedHarvest {
    if (_value.selectedHarvest == null) {
      return null;
    }

    return $HarvestCopyWith<$Res>(_value.selectedHarvest!, (value) {
      return _then(_value.copyWith(selectedHarvest: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $FieldCopyWith<$Res>? get selectedField {
    if (_value.selectedField == null) {
      return null;
    }

    return $FieldCopyWith<$Res>(_value.selectedField!, (value) {
      return _then(_value.copyWith(selectedField: value));
    });
  }
}

/// @nodoc

class _$LoadedIntroImpl implements LoadedIntro {
  _$LoadedIntroImpl(
      {final List<Farm> farms = const [],
      this.selectedFarm,
      final List<Harvest> harvests = const [],
      this.selectedHarvest,
      final List<Field> fields = const [],
      this.selectedField})
      : _farms = farms,
        _harvests = harvests,
        _fields = fields;

  final List<Farm> _farms;
  @override
  @JsonKey()
  List<Farm> get farms {
    if (_farms is EqualUnmodifiableListView) return _farms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_farms);
  }

  @override
  final Farm? selectedFarm;
  final List<Harvest> _harvests;
  @override
  @JsonKey()
  List<Harvest> get harvests {
    if (_harvests is EqualUnmodifiableListView) return _harvests;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_harvests);
  }

  @override
  final Harvest? selectedHarvest;
  final List<Field> _fields;
  @override
  @JsonKey()
  List<Field> get fields {
    if (_fields is EqualUnmodifiableListView) return _fields;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_fields);
  }

  @override
  final Field? selectedField;

  @override
  String toString() {
    return 'IntroState.loaded(farms: $farms, selectedFarm: $selectedFarm, harvests: $harvests, selectedHarvest: $selectedHarvest, fields: $fields, selectedField: $selectedField)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedIntroImpl &&
            const DeepCollectionEquality().equals(other._farms, _farms) &&
            (identical(other.selectedFarm, selectedFarm) ||
                other.selectedFarm == selectedFarm) &&
            const DeepCollectionEquality().equals(other._harvests, _harvests) &&
            (identical(other.selectedHarvest, selectedHarvest) ||
                other.selectedHarvest == selectedHarvest) &&
            const DeepCollectionEquality().equals(other._fields, _fields) &&
            (identical(other.selectedField, selectedField) ||
                other.selectedField == selectedField));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_farms),
      selectedFarm,
      const DeepCollectionEquality().hash(_harvests),
      selectedHarvest,
      const DeepCollectionEquality().hash(_fields),
      selectedField);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedIntroImplCopyWith<_$LoadedIntroImpl> get copyWith =>
      __$$LoadedIntroImplCopyWithImpl<_$LoadedIntroImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() error,
    required TResult Function() loading,
    required TResult Function(
            List<Farm> farms,
            Farm? selectedFarm,
            List<Harvest> harvests,
            Harvest? selectedHarvest,
            List<Field> fields,
            Field? selectedField)
        loaded,
    required TResult Function() success,
  }) {
    return loaded(
        farms, selectedFarm, harvests, selectedHarvest, fields, selectedField);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? error,
    TResult? Function()? loading,
    TResult? Function(
            List<Farm> farms,
            Farm? selectedFarm,
            List<Harvest> harvests,
            Harvest? selectedHarvest,
            List<Field> fields,
            Field? selectedField)?
        loaded,
    TResult? Function()? success,
  }) {
    return loaded?.call(
        farms, selectedFarm, harvests, selectedHarvest, fields, selectedField);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? error,
    TResult Function()? loading,
    TResult Function(
            List<Farm> farms,
            Farm? selectedFarm,
            List<Harvest> harvests,
            Harvest? selectedHarvest,
            List<Field> fields,
            Field? selectedField)?
        loaded,
    TResult Function()? success,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(farms, selectedFarm, harvests, selectedHarvest, fields,
          selectedField);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialIntro value) initial,
    required TResult Function(ErrorIntro value) error,
    required TResult Function(LoadingIntro value) loading,
    required TResult Function(LoadedIntro value) loaded,
    required TResult Function(SuccessIntro value) success,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialIntro value)? initial,
    TResult? Function(ErrorIntro value)? error,
    TResult? Function(LoadingIntro value)? loading,
    TResult? Function(LoadedIntro value)? loaded,
    TResult? Function(SuccessIntro value)? success,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialIntro value)? initial,
    TResult Function(ErrorIntro value)? error,
    TResult Function(LoadingIntro value)? loading,
    TResult Function(LoadedIntro value)? loaded,
    TResult Function(SuccessIntro value)? success,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class LoadedIntro implements IntroState {
  factory LoadedIntro(
      {final List<Farm> farms,
      final Farm? selectedFarm,
      final List<Harvest> harvests,
      final Harvest? selectedHarvest,
      final List<Field> fields,
      final Field? selectedField}) = _$LoadedIntroImpl;

  List<Farm> get farms;
  Farm? get selectedFarm;
  List<Harvest> get harvests;
  Harvest? get selectedHarvest;
  List<Field> get fields;
  Field? get selectedField;
  @JsonKey(ignore: true)
  _$$LoadedIntroImplCopyWith<_$LoadedIntroImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessIntroImplCopyWith<$Res> {
  factory _$$SuccessIntroImplCopyWith(
          _$SuccessIntroImpl value, $Res Function(_$SuccessIntroImpl) then) =
      __$$SuccessIntroImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SuccessIntroImplCopyWithImpl<$Res>
    extends _$IntroStateCopyWithImpl<$Res, _$SuccessIntroImpl>
    implements _$$SuccessIntroImplCopyWith<$Res> {
  __$$SuccessIntroImplCopyWithImpl(
      _$SuccessIntroImpl _value, $Res Function(_$SuccessIntroImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SuccessIntroImpl implements SuccessIntro {
  _$SuccessIntroImpl();

  @override
  String toString() {
    return 'IntroState.success()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SuccessIntroImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() error,
    required TResult Function() loading,
    required TResult Function(
            List<Farm> farms,
            Farm? selectedFarm,
            List<Harvest> harvests,
            Harvest? selectedHarvest,
            List<Field> fields,
            Field? selectedField)
        loaded,
    required TResult Function() success,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? error,
    TResult? Function()? loading,
    TResult? Function(
            List<Farm> farms,
            Farm? selectedFarm,
            List<Harvest> harvests,
            Harvest? selectedHarvest,
            List<Field> fields,
            Field? selectedField)?
        loaded,
    TResult? Function()? success,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? error,
    TResult Function()? loading,
    TResult Function(
            List<Farm> farms,
            Farm? selectedFarm,
            List<Harvest> harvests,
            Harvest? selectedHarvest,
            List<Field> fields,
            Field? selectedField)?
        loaded,
    TResult Function()? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialIntro value) initial,
    required TResult Function(ErrorIntro value) error,
    required TResult Function(LoadingIntro value) loading,
    required TResult Function(LoadedIntro value) loaded,
    required TResult Function(SuccessIntro value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialIntro value)? initial,
    TResult? Function(ErrorIntro value)? error,
    TResult? Function(LoadingIntro value)? loading,
    TResult? Function(LoadedIntro value)? loaded,
    TResult? Function(SuccessIntro value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialIntro value)? initial,
    TResult Function(ErrorIntro value)? error,
    TResult Function(LoadingIntro value)? loading,
    TResult Function(LoadedIntro value)? loaded,
    TResult Function(SuccessIntro value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class SuccessIntro implements IntroState {
  factory SuccessIntro() = _$SuccessIntroImpl;
}
