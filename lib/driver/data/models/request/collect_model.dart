// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:intl/intl.dart';
import 'package:uuid/uuid.dart';

import '../../../../operator/domain/entities/destination.dart';
import '../../../domain/entities/form_data/destination_form.dart';
import '../../../domain/entities/form_data/driver_form.dart';
import '../../../domain/entities/form_data/harvest_form.dart';
import '../../../driver.dart';

part 'collect_model.freezed.dart';
part 'collect_model.g.dart';

///
/// Model params to login user
///
const int collectModelAdapterTypeId = 12;

@freezed
class CollectModel with _$CollectModel {
  const CollectModel._();

  ///
  /// [LoginParamsModel] default constructor
  ///
  @HiveType(
    typeId: collectModelAdapterTypeId,
    adapterName: 'CollectModelAdapter',
  )
  const factory CollectModel({
    @HiveField(0) @JsonKey(name: 'ZF1_ID') required String id,
    @HiveField(1) @JsonKey(name: 'ZF1_DATA') required String data,
    @HiveField(2) @JsonKey(name: 'ZF1_SAFRA') required String harvest,
    @HiveField(3) @JsonKey(name: 'ZF1_FAZ') required String farm,
    @HiveField(4) @JsonKey(name: 'ZF1_TALHAO') required String field,
    @HiveField(5) @JsonKey(name: 'ZF1_COD') required String productCode,
    @HiveField(6) @JsonKey(name: 'ZF1_CODVAR') required String varietyCode,
    @HiveField(7) @JsonKey(name: 'ZF1_ORDCOL') @Default('') String order,
    @HiveField(8) @JsonKey(name: 'ZF1_PLACA') required String vehiclePlate,
    @HiveField(9) @JsonKey(name: 'ZF1_TRANSP') required String shippingCompany,
    @HiveField(10) @JsonKey(name: 'ZF1_CODMOT') required String driverCode,
    @HiveField(11)
    @JsonKey(name: 'ZF1_FILORI')
    required String subsidiaryOrigin,
    @HiveField(12)
    @JsonKey(name: 'ZF1_ENTDES')
    required String entityDescription,
    @HiveField(13)
    @JsonKey(name: 'ZF1_LOJDES')
    required String storeDescription,
    @HiveField(14) @JsonKey(name: 'ZF1_QTDE') required int quantity,
    @HiveField(15) @Default(false) alreadySent,
  }) = _CollectModel;

  ///
  /// Creates a new [LoginParamsModel] instance from a map
  ///
  factory CollectModel.fromJson(Map<String, dynamic> json) =>
      _$CollectModelFromJson(json);

  ///Creates a [LoginParamsModel] from a [LoginParams] entity.
  factory CollectModel.fromEntity(
    HarvestForm entity,
  ) {
    return CollectModel(
      id: entity.id ?? const Uuid().v1(),
      data: entity.date ?? '',
      harvest: entity.location?.harvest.code ?? '',
      farm: entity.location?.farm.farmCode ?? '',
      field: entity.location?.field.fieldCode ?? '',
      productCode: entity.product?.productCode ?? '',
      varietyCode: entity.product?.productVariety ?? '',
      order: '',
      vehiclePlate: entity.driver?.truckPlate ?? '',
      shippingCompany: entity.driver?.shippingCompanyCode ?? '',
      driverCode: entity.driver?.driverCode ?? '',
      subsidiaryOrigin: entity.destination?.entityCode ?? '',
      entityDescription: entity.destination?.entityName ?? '',
      storeDescription: entity.destination?.entityStoreName ?? '',
      quantity: int.parse(entity.product?.quantity ?? '1'),
    );
  }

  String _getCurrentDate() {
    var now = DateTime.now();
    var formatter = DateFormat('dd/MM/yyyy');
    return formatter.format(now);
  }
}
