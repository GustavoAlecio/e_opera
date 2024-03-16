// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class LoginModelAdapter extends TypeAdapter<_$LoginModelImpl> {
  @override
  final int typeId = 0;

  @override
  _$LoginModelImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$LoginModelImpl(
      id: fields[0] as int,
      accessToken: fields[1] as String,
      refreshToken: fields[2] as String,
      nome: fields[3] as String?,
      perfil: fields[4] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, _$LoginModelImpl obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.accessToken)
      ..writeByte(2)
      ..write(obj.refreshToken)
      ..writeByte(3)
      ..write(obj.nome)
      ..writeByte(4)
      ..write(obj.perfil);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LoginModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginModelImpl _$$LoginModelImplFromJson(Map<String, dynamic> json) =>
    _$LoginModelImpl(
      id: json['userId'] as int,
      accessToken: json['accessToken'] as String,
      refreshToken: json['refreshToken'] as String,
      nome: json['nome'] as String? ?? '',
      perfil: json['perfil'] as String? ?? '',
    );

Map<String, dynamic> _$$LoginModelImplToJson(_$LoginModelImpl instance) =>
    <String, dynamic>{
      'userId': instance.id,
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
      'nome': instance.nome,
      'perfil': instance.perfil,
    };
