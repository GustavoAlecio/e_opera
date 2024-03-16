// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collect_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CollectModelAdapter extends TypeAdapter<_$CollectModelImpl> {
  @override
  final int typeId = 12;

  @override
  _$CollectModelImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$CollectModelImpl(
      id: fields[0] as String,
      data: fields[1] as String,
      harvest: fields[2] as String,
      farm: fields[3] as String,
      field: fields[4] as String,
      productCode: fields[5] as String,
      varietyCode: fields[6] as String,
      order: fields[7] as String,
      vehiclePlate: fields[8] as String,
      shippingCompany: fields[9] as String,
      driverCode: fields[10] as String,
      subsidiaryOrigin: fields[11] as String,
      entityDescription: fields[12] as String,
      storeDescription: fields[13] as String,
      quantity: fields[14] as int,
      alreadySent: fields[15] as dynamic,
    );
  }

  @override
  void write(BinaryWriter writer, _$CollectModelImpl obj) {
    writer
      ..writeByte(16)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.data)
      ..writeByte(2)
      ..write(obj.harvest)
      ..writeByte(3)
      ..write(obj.farm)
      ..writeByte(4)
      ..write(obj.field)
      ..writeByte(5)
      ..write(obj.productCode)
      ..writeByte(6)
      ..write(obj.varietyCode)
      ..writeByte(7)
      ..write(obj.order)
      ..writeByte(8)
      ..write(obj.vehiclePlate)
      ..writeByte(9)
      ..write(obj.shippingCompany)
      ..writeByte(10)
      ..write(obj.driverCode)
      ..writeByte(11)
      ..write(obj.subsidiaryOrigin)
      ..writeByte(12)
      ..write(obj.entityDescription)
      ..writeByte(13)
      ..write(obj.storeDescription)
      ..writeByte(14)
      ..write(obj.quantity)
      ..writeByte(15)
      ..write(obj.alreadySent);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CollectModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CollectModelImpl _$$CollectModelImplFromJson(Map<String, dynamic> json) =>
    _$CollectModelImpl(
      id: json['ZF1_ID'] as String,
      data: json['ZF1_DATA'] as String,
      harvest: json['ZF1_SAFRA'] as String,
      farm: json['ZF1_FAZ'] as String,
      field: json['ZF1_TALHAO'] as String,
      productCode: json['ZF1_COD'] as String,
      varietyCode: json['ZF1_CODVAR'] as String,
      order: json['ZF1_ORDCOL'] as String? ?? '',
      vehiclePlate: json['ZF1_PLACA'] as String,
      shippingCompany: json['ZF1_TRANSP'] as String,
      driverCode: json['ZF1_CODMOT'] as String,
      subsidiaryOrigin: json['ZF1_FILORI'] as String,
      entityDescription: json['ZF1_ENTDES'] as String,
      storeDescription: json['ZF1_LOJDES'] as String,
      quantity: json['ZF1_QTDE'] as int,
      alreadySent: json['alreadySent'] ?? false,
    );

Map<String, dynamic> _$$CollectModelImplToJson(_$CollectModelImpl instance) =>
    <String, dynamic>{
      'ZF1_ID': instance.id,
      'ZF1_DATA': instance.data,
      'ZF1_SAFRA': instance.harvest,
      'ZF1_FAZ': instance.farm,
      'ZF1_TALHAO': instance.field,
      'ZF1_COD': instance.productCode,
      'ZF1_CODVAR': instance.varietyCode,
      'ZF1_ORDCOL': instance.order,
      'ZF1_PLACA': instance.vehiclePlate,
      'ZF1_TRANSP': instance.shippingCompany,
      'ZF1_CODMOT': instance.driverCode,
      'ZF1_FILORI': instance.subsidiaryOrigin,
      'ZF1_ENTDES': instance.entityDescription,
      'ZF1_LOJDES': instance.storeDescription,
      'ZF1_QTDE': instance.quantity,
      'alreadySent': instance.alreadySent,
    };
