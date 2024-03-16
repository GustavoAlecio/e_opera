// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_params_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginParamsModelImpl _$$LoginParamsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$LoginParamsModelImpl(
      user: json['usuario'] as String,
      password: json['senha'] as String,
      application: json['aplicacao'] as String,
    );

Map<String, dynamic> _$$LoginParamsModelImplToJson(
        _$LoginParamsModelImpl instance) =>
    <String, dynamic>{
      'usuario': instance.user,
      'senha': instance.password,
      'aplicacao': instance.application,
    };
