// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'harvest_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HarvestModel _$HarvestModelFromJson(Map<String, dynamic> json) {
  return _HarvestModel.fromJson(json);
}

/// @nodoc
mixin _$HarvestModel {
  @HiveField(0)
  @JsonKey(name: 'desSafra')
  String get desSafra => throw _privateConstructorUsedError;
  @HiveField(1)
  @JsonKey(name: 'codigoSafra')
  String get codigoSafra => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HarvestModelCopyWith<HarvestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HarvestModelCopyWith<$Res> {
  factory $HarvestModelCopyWith(
          HarvestModel value, $Res Function(HarvestModel) then) =
      _$HarvestModelCopyWithImpl<$Res, HarvestModel>;
  @useResult
  $Res call(
      {@HiveField(0) @JsonKey(name: 'desSafra') String desSafra,
      @HiveField(1) @JsonKey(name: 'codigoSafra') String codigoSafra});
}

/// @nodoc
class _$HarvestModelCopyWithImpl<$Res, $Val extends HarvestModel>
    implements $HarvestModelCopyWith<$Res> {
  _$HarvestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? desSafra = null,
    Object? codigoSafra = null,
  }) {
    return _then(_value.copyWith(
      desSafra: null == desSafra
          ? _value.desSafra
          : desSafra // ignore: cast_nullable_to_non_nullable
              as String,
      codigoSafra: null == codigoSafra
          ? _value.codigoSafra
          : codigoSafra // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HarvestModelImplCopyWith<$Res>
    implements $HarvestModelCopyWith<$Res> {
  factory _$$HarvestModelImplCopyWith(
          _$HarvestModelImpl value, $Res Function(_$HarvestModelImpl) then) =
      __$$HarvestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) @JsonKey(name: 'desSafra') String desSafra,
      @HiveField(1) @JsonKey(name: 'codigoSafra') String codigoSafra});
}

/// @nodoc
class __$$HarvestModelImplCopyWithImpl<$Res>
    extends _$HarvestModelCopyWithImpl<$Res, _$HarvestModelImpl>
    implements _$$HarvestModelImplCopyWith<$Res> {
  __$$HarvestModelImplCopyWithImpl(
      _$HarvestModelImpl _value, $Res Function(_$HarvestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? desSafra = null,
    Object? codigoSafra = null,
  }) {
    return _then(_$HarvestModelImpl(
      desSafra: null == desSafra
          ? _value.desSafra
          : desSafra // ignore: cast_nullable_to_non_nullable
              as String,
      codigoSafra: null == codigoSafra
          ? _value.codigoSafra
          : codigoSafra // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: harvestModelAdapterTypeId, adapterName: 'HarvestModelAdapter')
class _$HarvestModelImpl extends _HarvestModel {
  _$HarvestModelImpl(
      {@HiveField(0) @JsonKey(name: 'desSafra') required this.desSafra,
      @HiveField(1) @JsonKey(name: 'codigoSafra') required this.codigoSafra})
      : super._();

  factory _$HarvestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$HarvestModelImplFromJson(json);

  @override
  @HiveField(0)
  @JsonKey(name: 'desSafra')
  final String desSafra;
  @override
  @HiveField(1)
  @JsonKey(name: 'codigoSafra')
  final String codigoSafra;

  @override
  String toString() {
    return 'HarvestModel(desSafra: $desSafra, codigoSafra: $codigoSafra)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HarvestModelImpl &&
            (identical(other.desSafra, desSafra) ||
                other.desSafra == desSafra) &&
            (identical(other.codigoSafra, codigoSafra) ||
                other.codigoSafra == codigoSafra));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, desSafra, codigoSafra);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HarvestModelImplCopyWith<_$HarvestModelImpl> get copyWith =>
      __$$HarvestModelImplCopyWithImpl<_$HarvestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HarvestModelImplToJson(
      this,
    );
  }
}

abstract class _HarvestModel extends HarvestModel {
  factory _HarvestModel(
      {@HiveField(0) @JsonKey(name: 'desSafra') required final String desSafra,
      @HiveField(1)
      @JsonKey(name: 'codigoSafra')
      required final String codigoSafra}) = _$HarvestModelImpl;
  _HarvestModel._() : super._();

  factory _HarvestModel.fromJson(Map<String, dynamic> json) =
      _$HarvestModelImpl.fromJson;

  @override
  @HiveField(0)
  @JsonKey(name: 'desSafra')
  String get desSafra;
  @override
  @HiveField(1)
  @JsonKey(name: 'codigoSafra')
  String get codigoSafra;
  @override
  @JsonKey(ignore: true)
  _$$HarvestModelImplCopyWith<_$HarvestModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
