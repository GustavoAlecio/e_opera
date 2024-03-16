// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../../login.dart';

part 'login_model.freezed.dart';
part 'login_model.g.dart';

/// [LoginModel] id adapter for hive
const int loginModelAdapterTypeId = 0;

///
/// Model to login user
///
@freezed
class LoginModel with _$LoginModel {
  const LoginModel._();

  ///
  /// [LoginModel] default constructor
  ///
  @HiveType(typeId: loginModelAdapterTypeId, adapterName: 'LoginModelAdapter')
  const factory LoginModel({
    @HiveField(0) @JsonKey(name: 'userId') required int id,
    @HiveField(1) required String accessToken,
    @HiveField(2) required String refreshToken,
    @HiveField(3) @Default('') String? nome,
    @HiveField(4) @Default('') String? perfil,
  }) = _LoginModel;

  ///
  /// Creates a new [LoginModel] instance from a map
  ///
  factory LoginModel.fromJson(Map<String, dynamic> json) =>
      _$LoginModelFromJson(json);

  ///Creates a [Login] from a [LoginModel].
  Login toEntity() {
    return Login(
      id: id,
      nome: nome,
      perfil: perfil,
      accessToken: accessToken,
      refreshToken: refreshToken,
    );
  }
}
