import 'package:bloc/bloc.dart';
import 'package:formation_flutter/model/product.dart';
import 'package:formation_flutter/screens/details/product_request.dart';

// Event
abstract class ProductBlocEvent {}

class LoadProductEvent extends ProductBlocEvent {
  final String barcode;

  LoadProductEvent(this.barcode);
}

// State
class ProductBlocState {
  final Product? product;

  const ProductBlocState(this.product);

  const ProductBlocState.init() : product = null;
}

// Bloc
class ProductBloc extends Bloc<ProductBlocEvent, ProductBlocState> {
  ProductBloc(String barcode) : super(const ProductBlocState.init()) {
    on<LoadProductEvent>(onLoadProduct);
    add(LoadProductEvent(barcode));
  }

  Future<void> onLoadProduct(
    ProductBlocEvent event,
    Emitter<ProductBlocState> emit,
  ) async {
    final String barcode = (event as LoadProductEvent).barcode;
    final ProductResponse response = await NetworkRequest().getProduct(barcode);
    emit(
      ProductBlocState(
        Product(
          barcode: response.response.barcode,
          name: response.response.name,
          brands: response.response.brands,
          altName: response.response.altName,
          nutriScore: ProductNutriscore.values.firstWhere(
              (element) => element.letter == response.response.nutriScore),

          quantity: response.response.quantity,
          manufacturingCountries: response.response.countries,
          picture: response.response.pictures.product,
          // TODO Faire mieux
          novaScore: ProductNovaScore.Group1,
          ecoScore: ProductEcoScore.A,
        ),
      ),
    );
  }
}
