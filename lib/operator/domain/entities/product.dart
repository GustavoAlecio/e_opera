import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.freezed.dart';

@freezed

/// Representation of a Product
sealed class Product with _$Product {
  const Product._();

  factory Product({
    @Default('') String productCode,
    @Default('') String productDescription,
  }) = _Product;
}
