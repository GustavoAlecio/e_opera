import 'package:freezed_annotation/freezed_annotation.dart';

part 'shipping_company.freezed.dart';

@freezed

/// Representation of aShippingCompany
sealed class ShippingCompany with _$ShippingCompany {
  const ShippingCompany._();

  factory ShippingCompany({
    @Default('') String shippingCompanyCode,
    @Default('') String shippingCompanyReducedName,
    @Default('') String shippingCompanyName,
  }) = _ShippingCompany;
}
