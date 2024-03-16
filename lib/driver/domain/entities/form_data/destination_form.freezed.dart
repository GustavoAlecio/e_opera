// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'destination_form.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DestinationForm _$DestinationFormFromJson(Map<String, dynamic> json) {
  return _DestinationForm.fromJson(json);
}

/// @nodoc
mixin _$DestinationForm {
  String? get entityCode => throw _privateConstructorUsedError;
  String? get entityName => throw _privateConstructorUsedError;
  String? get entityStore => throw _privateConstructorUsedError;
  String? get entityStoreName => throw _privateConstructorUsedError;
  String? get details => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DestinationFormCopyWith<DestinationForm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DestinationFormCopyWith<$Res> {
  factory $DestinationFormCopyWith(
          DestinationForm value, $Res Function(DestinationForm) then) =
      _$DestinationFormCopyWithImpl<$Res, DestinationForm>;
  @useResult
  $Res call(
      {String? entityCode,
      String? entityName,
      String? entityStore,
      String? entityStoreName,
      String? details});
}

/// @nodoc
class _$DestinationFormCopyWithImpl<$Res, $Val extends DestinationForm>
    implements $DestinationFormCopyWith<$Res> {
  _$DestinationFormCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entityCode = freezed,
    Object? entityName = freezed,
    Object? entityStore = freezed,
    Object? entityStoreName = freezed,
    Object? details = freezed,
  }) {
    return _then(_value.copyWith(
      entityCode: freezed == entityCode
          ? _value.entityCode
          : entityCode // ignore: cast_nullable_to_non_nullable
              as String?,
      entityName: freezed == entityName
          ? _value.entityName
          : entityName // ignore: cast_nullable_to_non_nullable
              as String?,
      entityStore: freezed == entityStore
          ? _value.entityStore
          : entityStore // ignore: cast_nullable_to_non_nullable
              as String?,
      entityStoreName: freezed == entityStoreName
          ? _value.entityStoreName
          : entityStoreName // ignore: cast_nullable_to_non_nullable
              as String?,
      details: freezed == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DestinationFormImplCopyWith<$Res>
    implements $DestinationFormCopyWith<$Res> {
  factory _$$DestinationFormImplCopyWith(_$DestinationFormImpl value,
          $Res Function(_$DestinationFormImpl) then) =
      __$$DestinationFormImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? entityCode,
      String? entityName,
      String? entityStore,
      String? entityStoreName,
      String? details});
}

/// @nodoc
class __$$DestinationFormImplCopyWithImpl<$Res>
    extends _$DestinationFormCopyWithImpl<$Res, _$DestinationFormImpl>
    implements _$$DestinationFormImplCopyWith<$Res> {
  __$$DestinationFormImplCopyWithImpl(
      _$DestinationFormImpl _value, $Res Function(_$DestinationFormImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entityCode = freezed,
    Object? entityName = freezed,
    Object? entityStore = freezed,
    Object? entityStoreName = freezed,
    Object? details = freezed,
  }) {
    return _then(_$DestinationFormImpl(
      entityCode: freezed == entityCode
          ? _value.entityCode
          : entityCode // ignore: cast_nullable_to_non_nullable
              as String?,
      entityName: freezed == entityName
          ? _value.entityName
          : entityName // ignore: cast_nullable_to_non_nullable
              as String?,
      entityStore: freezed == entityStore
          ? _value.entityStore
          : entityStore // ignore: cast_nullable_to_non_nullable
              as String?,
      entityStoreName: freezed == entityStoreName
          ? _value.entityStoreName
          : entityStoreName // ignore: cast_nullable_to_non_nullable
              as String?,
      details: freezed == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DestinationFormImpl extends _DestinationForm {
  _$DestinationFormImpl(
      {this.entityCode,
      this.entityName,
      this.entityStore,
      this.entityStoreName,
      this.details})
      : super._();

  factory _$DestinationFormImpl.fromJson(Map<String, dynamic> json) =>
      _$$DestinationFormImplFromJson(json);

  @override
  final String? entityCode;
  @override
  final String? entityName;
  @override
  final String? entityStore;
  @override
  final String? entityStoreName;
  @override
  final String? details;

  @override
  String toString() {
    return 'DestinationForm(entityCode: $entityCode, entityName: $entityName, entityStore: $entityStore, entityStoreName: $entityStoreName, details: $details)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DestinationFormImpl &&
            (identical(other.entityCode, entityCode) ||
                other.entityCode == entityCode) &&
            (identical(other.entityName, entityName) ||
                other.entityName == entityName) &&
            (identical(other.entityStore, entityStore) ||
                other.entityStore == entityStore) &&
            (identical(other.entityStoreName, entityStoreName) ||
                other.entityStoreName == entityStoreName) &&
            (identical(other.details, details) || other.details == details));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, entityCode, entityName,
      entityStore, entityStoreName, details);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DestinationFormImplCopyWith<_$DestinationFormImpl> get copyWith =>
      __$$DestinationFormImplCopyWithImpl<_$DestinationFormImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DestinationFormImplToJson(
      this,
    );
  }
}

abstract class _DestinationForm extends DestinationForm {
  factory _DestinationForm(
      {final String? entityCode,
      final String? entityName,
      final String? entityStore,
      final String? entityStoreName,
      final String? details}) = _$DestinationFormImpl;
  _DestinationForm._() : super._();

  factory _DestinationForm.fromJson(Map<String, dynamic> json) =
      _$DestinationFormImpl.fromJson;

  @override
  String? get entityCode;
  @override
  String? get entityName;
  @override
  String? get entityStore;
  @override
  String? get entityStoreName;
  @override
  String? get details;
  @override
  @JsonKey(ignore: true)
  _$$DestinationFormImplCopyWith<_$DestinationFormImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
