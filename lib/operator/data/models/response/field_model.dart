// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../../domain/entities/field.dart';

part 'field_model.freezed.dart';
part 'field_model.g.dart';

///
/// Model params to field
///
const int fieldModelAdapterTypeId = 4;

@freezed
class FieldModel with _$FieldModel {
  const FieldModel._();

  ///
  /// [FieldModel] default constructor
  ///
  @HiveType(typeId: fieldModelAdapterTypeId, adapterName: 'FieldModelAdapter')
  factory FieldModel({
    @HiveField(0) @JsonKey(name: 'desTalhao') required String fieldDescription,
    @HiveField(1) @JsonKey(name: 'codTalhao') required String fieldCode,
    @HiveField(2) @JsonKey(name: 'safraTalhao') required String harvestField,
    @HiveField(3) @JsonKey(name: 'fazendaTalhao') required String farmField,
    @HiveField(4) @JsonKey(name: 'produtoTalhao') required String productField,
    @HiveField(5)
    @JsonKey(name: 'desProduto')
    required String productDescription,
    @HiveField(6) @JsonKey(name: 'codVariedade') required String varietyCode,
    @HiveField(7)
    @JsonKey(name: 'desVariedade')
    required String varietyDescription,
  }) = _Field;

  factory FieldModel.fromJson(Map<String, dynamic> json) =>
      _$FieldModelFromJson(json);

  factory FieldModel.fromEntity(
    Field entity,
  ) {
    return FieldModel(
        fieldDescription: entity.fieldDescription,
        fieldCode: entity.fieldCode,
        harvestField: entity.harvestField,
        farmField: entity.farmField,
        productField: entity.productField,
        productDescription: entity.productDescription,
        varietyCode: entity.varietyCode,
        varietyDescription: entity.varietyDescription);
  }

  /// Creates a [Field] from a [FieldModel].
  Field toEntity() {
    return Field(
        fieldDescription: fieldDescription as String,
        fieldCode: fieldCode as String,
        harvestField: harvestField as String,
        farmField: farmField as String,
        productField: productField as String,
        productDescription: productDescription as String,
        varietyCode: varietyCode as String,
        varietyDescription: varietyDescription as String);
  }
}
