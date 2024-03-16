// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'harvest.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Harvest _$HarvestFromJson(Map<String, dynamic> json) {
  return _Harvest.fromJson(json);
}

/// @nodoc
mixin _$Harvest {
  String get description => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HarvestCopyWith<Harvest> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HarvestCopyWith<$Res> {
  factory $HarvestCopyWith(Harvest value, $Res Function(Harvest) then) =
      _$HarvestCopyWithImpl<$Res, Harvest>;
  @useResult
  $Res call({String description, String code});
}

/// @nodoc
class _$HarvestCopyWithImpl<$Res, $Val extends Harvest>
    implements $HarvestCopyWith<$Res> {
  _$HarvestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? code = null,
  }) {
    return _then(_value.copyWith(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HarvestImplCopyWith<$Res> implements $HarvestCopyWith<$Res> {
  factory _$$HarvestImplCopyWith(
          _$HarvestImpl value, $Res Function(_$HarvestImpl) then) =
      __$$HarvestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String description, String code});
}

/// @nodoc
class __$$HarvestImplCopyWithImpl<$Res>
    extends _$HarvestCopyWithImpl<$Res, _$HarvestImpl>
    implements _$$HarvestImplCopyWith<$Res> {
  __$$HarvestImplCopyWithImpl(
      _$HarvestImpl _value, $Res Function(_$HarvestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? code = null,
  }) {
    return _then(_$HarvestImpl(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HarvestImpl extends _Harvest {
  _$HarvestImpl({this.description = '', this.code = ''}) : super._();

  factory _$HarvestImpl.fromJson(Map<String, dynamic> json) =>
      _$$HarvestImplFromJson(json);

  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey()
  final String code;

  @override
  String toString() {
    return 'Harvest(description: $description, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HarvestImpl &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, description, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HarvestImplCopyWith<_$HarvestImpl> get copyWith =>
      __$$HarvestImplCopyWithImpl<_$HarvestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HarvestImplToJson(
      this,
    );
  }
}

abstract class _Harvest extends Harvest {
  factory _Harvest({final String description, final String code}) =
      _$HarvestImpl;
  _Harvest._() : super._();

  factory _Harvest.fromJson(Map<String, dynamic> json) = _$HarvestImpl.fromJson;

  @override
  String get description;
  @override
  String get code;
  @override
  @JsonKey(ignore: true)
  _$$HarvestImplCopyWith<_$HarvestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
