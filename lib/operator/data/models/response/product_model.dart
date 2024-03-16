// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../../domain/entities/driver.dart';
import '../../../domain/entities/product.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

///
/// Model params toProduct
///
const int productModelAdapterTypeId = 6;

@freezed
class ProductModel with _$ProductModel {
  const ProductModel._();

  ///
  /// [ProductModel] default constructor
  ///
  @HiveType(
      typeId: productModelAdapterTypeId, adapterName: 'ProductModelAdapter')
  factory ProductModel({
    @HiveField(0)
    @JsonKey(name: 'desProduto')
    required String productDescription,
    @HiveField(1) @JsonKey(name: 'codProduto') required String productCode,
  }) = _Product;

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);

  factory ProductModel.fromEntity(
    Product entity,
  ) {
    return ProductModel(
      productDescription: entity.productDescription,
      productCode: entity.productCode,
    );
  }

  /// Creates a [Product] from a [ProductModel].
  Product toEntity() {
    return Product(
      productDescription: productDescription as String,
      productCode: productCode as String,
    );
  }
}
