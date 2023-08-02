import 'package:bloc/bloc.dart';
import 'package:formation_flutter/model/product.dart';

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
    // TODO
    await Future.delayed(const Duration(seconds: 5));
    emit(ProductBlocState(_generateFakeProduct()));
  }

  Product _generateFakeProduct() {
    return Product(
      barcode: '123456789',
      name: 'Petits pois et carottes',
      brands: ['Cassegrain'],
      altName: 'Petits pois & carottes à l\'étuvée avec garniture',
      nutriScore: ProductNutriscore.A,
      novaScore: ProductNovaScore.Group1,
      ecoScore: ProductEcoScore.D,
      quantity: '150g (égoutté 130g)',
      manufacturingCountries: ['France'],
      picture:
          'https://images.unsplash.com/photo-1482049016688-2d3e1b311543?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1610&q=80',
    );
  }
}
