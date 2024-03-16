import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../../../../core/core.dart';
import '../../../domain/entities/driver.dart';
import '../../../domain/entities/product.dart';
import '../../../domain/entities/variety.dart';

part 'product_data_state.freezed.dart';

@freezed

/// State ofProductData
sealed class ProductDataState extends ViewModelState with _$ProductDataState {
  /// The initial [ProductDataState] state
  factory ProductDataState.initial() = InitialProductData;

  /// The loading [ProductDataState] state
  factory ProductDataState.error() = ErrorProductData;

  /// The loading [ProductDataState] state
  factory ProductDataState.loading() = LoadingProductData;

  /// TODO: add all entities as params
  factory ProductDataState.loaded({
    @Default([]) List<Product> products,
    Product? selectedProduct,
    @Default([]) List<Driver> drivers,
    Driver? selectedDriver,
    @Default([]) List<Variety> varieties,
    Variety? selectedVariety,
  }) = LoadedProductDataState;

  /// The user [ProductDataState] state
  factory ProductDataState.success() = SuccessProductData;
}
