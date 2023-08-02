import 'package:dio/dio.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:retrofit/http.dart';

part 'product_request.g.dart';

@JsonSerializable()
class ProductResponse {
  @JsonKey(name: "response")
  Response response;
  @JsonKey(name: "error")
  dynamic error;

  ProductResponse({
    required this.response,
    this.error,
  });

  factory ProductResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ProductResponseToJson(this);
}

@JsonSerializable()
class Response {
  @JsonKey(name: "name")
  String name;
  @JsonKey(name: "altName")
  String altName;
  @JsonKey(name: "barcode")
  String barcode;
  @JsonKey(name: "pictures")
  Pictures pictures;
  @JsonKey(name: "quantity")
  String quantity;
  @JsonKey(name: "brands")
  List<String> brands;
  @JsonKey(name: "stores")
  List<String> stores;
  @JsonKey(name: "countries")
  List<String> countries;
  @JsonKey(name: "manufacturingCountries")
  List<String> manufacturingCountries;
  @JsonKey(name: "nutriScore")
  String nutriScore;
  @JsonKey(name: "novaScore")
  int novaScore;
  @JsonKey(name: "ecoScore")
  int ecoScore;
  @JsonKey(name: "ecoScoreGrade")
  String ecoScoreGrade;
  @JsonKey(name: "nutritionScore")
  int nutritionScore;
  @JsonKey(name: "ingredients")
  Ingredients ingredients;
  @JsonKey(name: "nutrientLevels")
  NutrientLevels nutrientLevels;
  @JsonKey(name: "nutritionFacts")
  NutritionFacts nutritionFacts;
  @JsonKey(name: "traces")
  Allergens traces;
  @JsonKey(name: "additives")
  Additives additives;
  @JsonKey(name: "allergens")
  Allergens allergens;
  @JsonKey(name: "packaging")
  List<String> packaging;
  @JsonKey(name: "analysis")
  Analysis analysis;

  Response({
    required this.name,
    required this.altName,
    required this.barcode,
    required this.pictures,
    required this.quantity,
    required this.brands,
    required this.stores,
    required this.countries,
    required this.manufacturingCountries,
    required this.nutriScore,
    required this.novaScore,
    required this.ecoScore,
    required this.ecoScoreGrade,
    required this.nutritionScore,
    required this.ingredients,
    required this.nutrientLevels,
    required this.nutritionFacts,
    required this.traces,
    required this.additives,
    required this.allergens,
    required this.packaging,
    required this.analysis,
  });

  factory Response.fromJson(Map<String, dynamic> json) =>
      _$ResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ResponseToJson(this);
}

@JsonSerializable()
class Additives {
  @JsonKey(name: "E322")
  String e322;
  @JsonKey(name: "E407")
  String e407;
  @JsonKey(name: "E410")
  String e410;
  @JsonKey(name: "E412")
  String e412;
  @JsonKey(name: "E471")
  String e471;
  @JsonKey(name: "E492")
  String e492;
  @JsonKey(name: "E503")
  String e503;

  Additives({
    required this.e322,
    required this.e407,
    required this.e410,
    required this.e412,
    required this.e471,
    required this.e492,
    required this.e503,
  });

  factory Additives.fromJson(Map<String, dynamic> json) =>
      _$AdditivesFromJson(json);

  Map<String, dynamic> toJson() => _$AdditivesToJson(this);
}

@JsonSerializable()
class Allergens {
  @JsonKey(name: "list")
  List<String> list;

  Allergens({
    required this.list,
  });

  factory Allergens.fromJson(Map<String, dynamic> json) =>
      _$AllergensFromJson(json);

  Map<String, dynamic> toJson() => _$AllergensToJson(this);
}

@JsonSerializable()
class Analysis {
  @JsonKey(name: "palmOil")
  String palmOil;
  @JsonKey(name: "vegan")
  String vegan;
  @JsonKey(name: "vegetarian")
  String vegetarian;

  Analysis({
    required this.palmOil,
    required this.vegan,
    required this.vegetarian,
  });

  factory Analysis.fromJson(Map<String, dynamic> json) =>
      _$AnalysisFromJson(json);

  Map<String, dynamic> toJson() => _$AnalysisToJson(this);
}

@JsonSerializable()
class Ingredients {
  @JsonKey(name: "containsPalmOil")
  bool containsPalmOil;
  @JsonKey(name: "list")
  List<String> list;
  @JsonKey(name: "details")
  List<Detail> details;

  Ingredients({
    required this.containsPalmOil,
    required this.list,
    required this.details,
  });

  factory Ingredients.fromJson(Map<String, dynamic> json) =>
      _$IngredientsFromJson(json);

  Map<String, dynamic> toJson() => _$IngredientsToJson(this);
}

@JsonSerializable()
class Detail {
  @JsonKey(name: "vegan")
  bool vegan;
  @JsonKey(name: "vegetarian")
  bool vegetarian;
  @JsonKey(name: "containsPalmOil")
  bool containsPalmOil;
  @JsonKey(name: "percent")
  Percent percent;
  @JsonKey(name: "value")
  String value;

  Detail({
    required this.vegan,
    required this.vegetarian,
    required this.containsPalmOil,
    required this.percent,
    required this.value,
  });

  factory Detail.fromJson(Map<String, dynamic> json) => _$DetailFromJson(json);

  Map<String, dynamic> toJson() => _$DetailToJson(this);
}

enum Percent {
  @JsonValue("null")
  NULL
}

@JsonSerializable()
class NutrientLevels {
  @JsonKey(name: "fat")
  Fat fat;
  @JsonKey(name: "salt")
  Fat salt;
  @JsonKey(name: "saturatedFat")
  Fat saturatedFat;
  @JsonKey(name: "sugars")
  Fat sugars;

  NutrientLevels({
    required this.fat,
    required this.salt,
    required this.saturatedFat,
    required this.sugars,
  });

  factory NutrientLevels.fromJson(Map<String, dynamic> json) =>
      _$NutrientLevelsFromJson(json);

  Map<String, dynamic> toJson() => _$NutrientLevelsToJson(this);
}

@JsonSerializable()
class Fat {
  @JsonKey(name: "level")
  String level;
  @JsonKey(name: "per100g")
  double per100G;

  Fat({
    required this.level,
    required this.per100G,
  });

  factory Fat.fromJson(Map<String, dynamic> json) => _$FatFromJson(json);

  Map<String, dynamic> toJson() => _$FatToJson(this);
}

@JsonSerializable()
class NutritionFacts {
  @JsonKey(name: "servingSize")
  String servingSize;
  @JsonKey(name: "calories")
  dynamic calories;
  @JsonKey(name: "fat")
  Carbohydrate fat;
  @JsonKey(name: "saturatedFat")
  Carbohydrate saturatedFat;
  @JsonKey(name: "carbohydrate")
  Carbohydrate carbohydrate;
  @JsonKey(name: "sugar")
  Carbohydrate sugar;
  @JsonKey(name: "fiber")
  dynamic fiber;
  @JsonKey(name: "proteins")
  Carbohydrate proteins;
  @JsonKey(name: "sodium")
  Carbohydrate sodium;
  @JsonKey(name: "salt")
  Carbohydrate salt;
  @JsonKey(name: "energy")
  Carbohydrate energy;

  NutritionFacts({
    required this.servingSize,
    this.calories,
    required this.fat,
    required this.saturatedFat,
    required this.carbohydrate,
    required this.sugar,
    this.fiber,
    required this.proteins,
    required this.sodium,
    required this.salt,
    required this.energy,
  });

  factory NutritionFacts.fromJson(Map<String, dynamic> json) =>
      _$NutritionFactsFromJson(json);

  Map<String, dynamic> toJson() => _$NutritionFactsToJson(this);
}

@JsonSerializable()
class Carbohydrate {
  @JsonKey(name: "unit")
  String unit;
  @JsonKey(name: "perServing")
  String perServing;
  @JsonKey(name: "per100g")
  String per100G;

  Carbohydrate({
    required this.unit,
    required this.perServing,
    required this.per100G,
  });

  factory Carbohydrate.fromJson(Map<String, dynamic> json) =>
      _$CarbohydrateFromJson(json);

  Map<String, dynamic> toJson() => _$CarbohydrateToJson(this);
}

@JsonSerializable()
class Pictures {
  @JsonKey(name: "product")
  String product;
  @JsonKey(name: "front")
  String front;
  @JsonKey(name: "ingredients")
  String ingredients;
  @JsonKey(name: "nutrition")
  String nutrition;

  Pictures({
    required this.product,
    required this.front,
    required this.ingredients,
    required this.nutrition,
  });

  factory Pictures.fromJson(Map<String, dynamic> json) =>
      _$PicturesFromJson(json);

  Map<String, dynamic> toJson() => _$PicturesToJson(this);
}

@RestApi()
abstract class OFFApi {
  factory OFFApi(Dio dio, {required String baseUrl}) = _OFFApi;

  @GET('/getProduct')
  Future<ProductResponse> getProduct(@Query('barcode') String barcode);
}

class NetworkRequest {
  final OFFApi api;

  NetworkRequest()
      : api = OFFApi(
          Dio()..interceptors.add(LogInterceptor(responseBody: true)),
          baseUrl: 'https://api.formation-android.fr/v2/',
        );

  Future<ProductResponse> getProduct(String barcode) {
    return api.getProduct(barcode);
  }
}
