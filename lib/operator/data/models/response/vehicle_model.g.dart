// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicle_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class VehicleModelAdapter extends TypeAdapter<_$VehicleModelImpl> {
  @override
  final int typeId = 10;

  @override
  _$VehicleModelImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$VehicleModelImpl(
      vehicleCode: fields[0] as String,
      driverVehicle: fields[1] as String,
      vehicleName: fields[2] as String,
      vehiclePlate: fields[3] as String,
    );
  }

  @override
  void write(BinaryWriter writer, _$VehicleModelImpl obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.vehicleCode)
      ..writeByte(1)
      ..write(obj.driverVehicle)
      ..writeByte(2)
      ..write(obj.vehicleName)
      ..writeByte(3)
      ..write(obj.vehiclePlate);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is VehicleModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VehicleModelImpl _$$VehicleModelImplFromJson(Map<String, dynamic> json) =>
    _$VehicleModelImpl(
      vehicleCode: json['codVeiculo'] as String,
      driverVehicle: json['motoristaVeiculo'] as String,
      vehicleName: json['nomeVeiculo'] as String,
      vehiclePlate: json['placaVeiculo'] as String,
    );

Map<String, dynamic> _$$VehicleModelImplToJson(_$VehicleModelImpl instance) =>
    <String, dynamic>{
      'codVeiculo': instance.vehicleCode,
      'motoristaVeiculo': instance.driverVehicle,
      'nomeVeiculo': instance.vehicleName,
      'placaVeiculo': instance.vehiclePlate,
    };
