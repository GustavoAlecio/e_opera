import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_form.freezed.dart';
part 'product_form.g.dart';

@freezed

/// Representation of a Product
sealed class ProductForm with _$ProductForm {
  const ProductForm._();

  factory ProductForm({
    @Default('') String productCode,
    @Default('') String productDescription,
    @Default('') String productVariety,
    @Default('') String quantity,
    @Default('') String unit,
  }) = _ProductForm;

  factory ProductForm.fromJson(Map<String, dynamic> json) =>
      _$ProductFormFromJson(json);
}
