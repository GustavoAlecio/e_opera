// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shipping_company_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ShippingCompanyModelAdapter
    extends TypeAdapter<_$ShippingCompanyModelImpl> {
  @override
  final int typeId = 7;

  @override
  _$ShippingCompanyModelImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$ShippingCompanyModelImpl(
      shippingCompanyCode: fields[0] as String,
      shippingCompanyReducedName: fields[1] as String,
      shippingCompanyName: fields[2] as String,
    );
  }

  @override
  void write(BinaryWriter writer, _$ShippingCompanyModelImpl obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.shippingCompanyCode)
      ..writeByte(1)
      ..write(obj.shippingCompanyReducedName)
      ..writeByte(2)
      ..write(obj.shippingCompanyName);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ShippingCompanyModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ShippingCompanyModelImpl _$$ShippingCompanyModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ShippingCompanyModelImpl(
      shippingCompanyCode: json['codTransportadora'] as String,
      shippingCompanyReducedName: json['nreduzTransportadora'] as String,
      shippingCompanyName: json['nomeTransportadora'] as String,
    );

Map<String, dynamic> _$$ShippingCompanyModelImplToJson(
        _$ShippingCompanyModelImpl instance) =>
    <String, dynamic>{
      'codTransportadora': instance.shippingCompanyCode,
      'nreduzTransportadora': instance.shippingCompanyReducedName,
      'nomeTransportadora': instance.shippingCompanyName,
    };
