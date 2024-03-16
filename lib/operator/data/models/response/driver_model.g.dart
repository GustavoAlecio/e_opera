// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'driver_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DriverModelAdapter extends TypeAdapter<_$DriverModelImpl> {
  @override
  final int typeId = 1;

  @override
  _$DriverModelImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$DriverModelImpl(
      driverCode: fields[0] as String,
      driverName: fields[1] as String,
      driverReducedName: fields[2] as String,
      driverCpf: fields[3] as String,
    );
  }

  @override
  void write(BinaryWriter writer, _$DriverModelImpl obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.driverCode)
      ..writeByte(1)
      ..write(obj.driverName)
      ..writeByte(2)
      ..write(obj.driverReducedName)
      ..writeByte(3)
      ..write(obj.driverCpf);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DriverModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DriverModelImpl _$$DriverModelImplFromJson(Map<String, dynamic> json) =>
    _$DriverModelImpl(
      driverCode: json['codMotorista'] as String,
      driverName: json['nomeMotorista'] as String,
      driverReducedName: json['nreduzMotorista'] as String,
      driverCpf: json['cpfMotorista'] as String,
    );

Map<String, dynamic> _$$DriverModelImplToJson(_$DriverModelImpl instance) =>
    <String, dynamic>{
      'codMotorista': instance.driverCode,
      'nomeMotorista': instance.driverName,
      'nreduzMotorista': instance.driverReducedName,
      'cpfMotorista': instance.driverCpf,
    };
