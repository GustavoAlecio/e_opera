// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LoginModel _$LoginModelFromJson(Map<String, dynamic> json) {
  return _LoginModel.fromJson(json);
}

/// @nodoc
mixin _$LoginModel {
  @HiveField(0)
  @JsonKey(name: 'userId')
  int get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String get accessToken => throw _privateConstructorUsedError;
  @HiveField(2)
  String get refreshToken => throw _privateConstructorUsedError;
  @HiveField(3)
  String? get nome => throw _privateConstructorUsedError;
  @HiveField(4)
  String? get perfil => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginModelCopyWith<LoginModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginModelCopyWith<$Res> {
  factory $LoginModelCopyWith(
          LoginModel value, $Res Function(LoginModel) then) =
      _$LoginModelCopyWithImpl<$Res, LoginModel>;
  @useResult
  $Res call(
      {@HiveField(0) @JsonKey(name: 'userId') int id,
      @HiveField(1) String accessToken,
      @HiveField(2) String refreshToken,
      @HiveField(3) String? nome,
      @HiveField(4) String? perfil});
}

/// @nodoc
class _$LoginModelCopyWithImpl<$Res, $Val extends LoginModel>
    implements $LoginModelCopyWith<$Res> {
  _$LoginModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? accessToken = null,
    Object? refreshToken = null,
    Object? nome = freezed,
    Object? perfil = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      nome: freezed == nome
          ? _value.nome
          : nome // ignore: cast_nullable_to_non_nullable
              as String?,
      perfil: freezed == perfil
          ? _value.perfil
          : perfil // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginModelImplCopyWith<$Res>
    implements $LoginModelCopyWith<$Res> {
  factory _$$LoginModelImplCopyWith(
          _$LoginModelImpl value, $Res Function(_$LoginModelImpl) then) =
      __$$LoginModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) @JsonKey(name: 'userId') int id,
      @HiveField(1) String accessToken,
      @HiveField(2) String refreshToken,
      @HiveField(3) String? nome,
      @HiveField(4) String? perfil});
}

/// @nodoc
class __$$LoginModelImplCopyWithImpl<$Res>
    extends _$LoginModelCopyWithImpl<$Res, _$LoginModelImpl>
    implements _$$LoginModelImplCopyWith<$Res> {
  __$$LoginModelImplCopyWithImpl(
      _$LoginModelImpl _value, $Res Function(_$LoginModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? accessToken = null,
    Object? refreshToken = null,
    Object? nome = freezed,
    Object? perfil = freezed,
  }) {
    return _then(_$LoginModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      nome: freezed == nome
          ? _value.nome
          : nome // ignore: cast_nullable_to_non_nullable
              as String?,
      perfil: freezed == perfil
          ? _value.perfil
          : perfil // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: loginModelAdapterTypeId, adapterName: 'LoginModelAdapter')
class _$LoginModelImpl extends _LoginModel {
  const _$LoginModelImpl(
      {@HiveField(0) @JsonKey(name: 'userId') required this.id,
      @HiveField(1) required this.accessToken,
      @HiveField(2) required this.refreshToken,
      @HiveField(3) this.nome = '',
      @HiveField(4) this.perfil = ''})
      : super._();

  factory _$LoginModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginModelImplFromJson(json);

  @override
  @HiveField(0)
  @JsonKey(name: 'userId')
  final int id;
  @override
  @HiveField(1)
  final String accessToken;
  @override
  @HiveField(2)
  final String refreshToken;
  @override
  @JsonKey()
  @HiveField(3)
  final String? nome;
  @override
  @JsonKey()
  @HiveField(4)
  final String? perfil;

  @override
  String toString() {
    return 'LoginModel(id: $id, accessToken: $accessToken, refreshToken: $refreshToken, nome: $nome, perfil: $perfil)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken) &&
            (identical(other.nome, nome) || other.nome == nome) &&
            (identical(other.perfil, perfil) || other.perfil == perfil));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, accessToken, refreshToken, nome, perfil);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginModelImplCopyWith<_$LoginModelImpl> get copyWith =>
      __$$LoginModelImplCopyWithImpl<_$LoginModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginModelImplToJson(
      this,
    );
  }
}

abstract class _LoginModel extends LoginModel {
  const factory _LoginModel(
      {@HiveField(0) @JsonKey(name: 'userId') required final int id,
      @HiveField(1) required final String accessToken,
      @HiveField(2) required final String refreshToken,
      @HiveField(3) final String? nome,
      @HiveField(4) final String? perfil}) = _$LoginModelImpl;
  const _LoginModel._() : super._();

  factory _LoginModel.fromJson(Map<String, dynamic> json) =
      _$LoginModelImpl.fromJson;

  @override
  @HiveField(0)
  @JsonKey(name: 'userId')
  int get id;
  @override
  @HiveField(1)
  String get accessToken;
  @override
  @HiveField(2)
  String get refreshToken;
  @override
  @HiveField(3)
  String? get nome;
  @override
  @HiveField(4)
  String? get perfil;
  @override
  @JsonKey(ignore: true)
  _$$LoginModelImplCopyWith<_$LoginModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
