import '../../../../../../../core/core.dart';
import '../../../domain/entities/driver.dart';
import '../../../domain/entities/product.dart';
import '../../../domain/entities/variety.dart';
import '../../../domain/usecases/get_drivers_usecase.dart';
import '../../../domain/usecases/get_products_usecase.dart';
import '../../../domain/usecases/get_varieties_usecase.dart';
import 'product_data_state.dart';

/// ViewModel of [LoginPage]
class ProductDataViewModel extends ViewModel<ProductDataState> {
  final IGetDriversUsecase _getDriverUsecase;
  final IGetProductsUsecase _getProductUsecase;
  final IGetVarietiesUsecase _getVarietyUsecase;

  /// Constructor of [IntroViewModel]
  ProductDataViewModel(
    this._getDriverUsecase,
    this._getProductUsecase,
    this._getVarietyUsecase,
  ) : super(ProductDataState.initial());

  void navigateToHomePage() {}

  /// Method to realize login
  Future<void> getProductOptions() async {
    emit(LoadingProductData());

    final usecases = await Future.wait(
        [_getDriverUsecase(), _getProductUsecase(), _getVarietyUsecase()]);

    if (usecases.any((element) => element.isLeft())) {
      emit(ErrorProductData());
      return;
    }

    var drivers = usecases.first.toRight() as List<Driver>;
    var products = usecases[1].toRight() as List<Product>;
    var varieties = usecases.last.toRight() as List<Variety>;

    emit(LoadedProductDataState(
        drivers: drivers, products: products, varieties: varieties));
  }

  void onSelectDriver(String selectedDriver) {
    switch (state) {
      case LoadedProductDataState(:final copyWith, :final drivers):
        {
          final driver = drivers
              .firstWhere((element) => element.driverName == selectedDriver);

          // similar ao {..., selectedFarm: farm} do JavaScript
          emit(copyWith(selectedDriver: driver));
        }
      default:
        return;
    }
  }

  void onSelectProduct(String selectedProduct) {
    switch (state) {
      case LoadedProductDataState(:final copyWith, :final products):
        {
          final product = products.firstWhere(
              (element) => element.productDescription == selectedProduct);

          // similar ao {..., selectedFarm: farm} do JavaScript
          emit(copyWith(selectedProduct: product));
        }
      default:
        return;
    }
  }

  void onSelectVariety(String selectedVariety) {
    switch (state) {
      case LoadedProductDataState(:final copyWith, :final varieties):
        {
          final variety = varieties.firstWhere(
              (element) => element.varietyDescription == selectedVariety);

          // similar ao {..., selectedFarm: farm} do JavaScript
          emit(copyWith(selectedVariety: variety));
        }
      default:
        return;
    }
  }
}
