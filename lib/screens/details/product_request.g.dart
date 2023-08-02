// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductResponse _$ProductResponseFromJson(Map<String, dynamic> json) =>
    ProductResponse(
      response: Response.fromJson(json['response'] as Map<String, dynamic>),
      error: json['error'],
    );

Map<String, dynamic> _$ProductResponseToJson(ProductResponse instance) =>
    <String, dynamic>{
      'response': instance.response,
      'error': instance.error,
    };

Response _$ResponseFromJson(Map<String, dynamic> json) => Response(
      name: json['name'] as String,
      altName: json['altName'] as String,
      barcode: json['barcode'] as String,
      pictures: Pictures.fromJson(json['pictures'] as Map<String, dynamic>),
      quantity: json['quantity'] as String,
      brands:
          (json['brands'] as List<dynamic>).map((e) => e as String).toList(),
      stores:
          (json['stores'] as List<dynamic>).map((e) => e as String).toList(),
      countries:
          (json['countries'] as List<dynamic>).map((e) => e as String).toList(),
      manufacturingCountries: (json['manufacturingCountries'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      nutriScore: json['nutriScore'] as String,
      novaScore: json['novaScore'] as int,
      ecoScore: json['ecoScore'] as int,
      ecoScoreGrade: json['ecoScoreGrade'] as String,
      nutritionScore: json['nutritionScore'] as int,
      ingredients:
          Ingredients.fromJson(json['ingredients'] as Map<String, dynamic>),
      nutrientLevels: NutrientLevels.fromJson(
          json['nutrientLevels'] as Map<String, dynamic>),
      nutritionFacts: NutritionFacts.fromJson(
          json['nutritionFacts'] as Map<String, dynamic>),
      traces: Allergens.fromJson(json['traces'] as Map<String, dynamic>),
      additives: Additives.fromJson(json['additives'] as Map<String, dynamic>),
      allergens: Allergens.fromJson(json['allergens'] as Map<String, dynamic>),
      packaging:
          (json['packaging'] as List<dynamic>).map((e) => e as String).toList(),
      analysis: Analysis.fromJson(json['analysis'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ResponseToJson(Response instance) => <String, dynamic>{
      'name': instance.name,
      'altName': instance.altName,
      'barcode': instance.barcode,
      'pictures': instance.pictures,
      'quantity': instance.quantity,
      'brands': instance.brands,
      'stores': instance.stores,
      'countries': instance.countries,
      'manufacturingCountries': instance.manufacturingCountries,
      'nutriScore': instance.nutriScore,
      'novaScore': instance.novaScore,
      'ecoScore': instance.ecoScore,
      'ecoScoreGrade': instance.ecoScoreGrade,
      'nutritionScore': instance.nutritionScore,
      'ingredients': instance.ingredients,
      'nutrientLevels': instance.nutrientLevels,
      'nutritionFacts': instance.nutritionFacts,
      'traces': instance.traces,
      'additives': instance.additives,
      'allergens': instance.allergens,
      'packaging': instance.packaging,
      'analysis': instance.analysis,
    };

Additives _$AdditivesFromJson(Map<String, dynamic> json) => Additives(
      e322: json['E322'] as String,
      e407: json['E407'] as String,
      e410: json['E410'] as String,
      e412: json['E412'] as String,
      e471: json['E471'] as String,
      e492: json['E492'] as String,
      e503: json['E503'] as String,
    );

Map<String, dynamic> _$AdditivesToJson(Additives instance) => <String, dynamic>{
      'E322': instance.e322,
      'E407': instance.e407,
      'E410': instance.e410,
      'E412': instance.e412,
      'E471': instance.e471,
      'E492': instance.e492,
      'E503': instance.e503,
    };

Allergens _$AllergensFromJson(Map<String, dynamic> json) => Allergens(
      list: (json['list'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$AllergensToJson(Allergens instance) => <String, dynamic>{
      'list': instance.list,
    };

Analysis _$AnalysisFromJson(Map<String, dynamic> json) => Analysis(
      palmOil: json['palmOil'] as String,
      vegan: json['vegan'] as String,
      vegetarian: json['vegetarian'] as String,
    );

Map<String, dynamic> _$AnalysisToJson(Analysis instance) => <String, dynamic>{
      'palmOil': instance.palmOil,
      'vegan': instance.vegan,
      'vegetarian': instance.vegetarian,
    };

Ingredients _$IngredientsFromJson(Map<String, dynamic> json) => Ingredients(
      containsPalmOil: json['containsPalmOil'] as bool,
      list: (json['list'] as List<dynamic>).map((e) => e as String).toList(),
      details: (json['details'] as List<dynamic>)
          .map((e) => Detail.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$IngredientsToJson(Ingredients instance) =>
    <String, dynamic>{
      'containsPalmOil': instance.containsPalmOil,
      'list': instance.list,
      'details': instance.details,
    };

Detail _$DetailFromJson(Map<String, dynamic> json) => Detail(
      vegan: json['vegan'] as bool,
      vegetarian: json['vegetarian'] as bool,
      containsPalmOil: json['containsPalmOil'] as bool,
      percent: $enumDecode(_$PercentEnumMap, json['percent']),
      value: json['value'] as String,
    );

Map<String, dynamic> _$DetailToJson(Detail instance) => <String, dynamic>{
      'vegan': instance.vegan,
      'vegetarian': instance.vegetarian,
      'containsPalmOil': instance.containsPalmOil,
      'percent': _$PercentEnumMap[instance.percent]!,
      'value': instance.value,
    };

const _$PercentEnumMap = {
  Percent.NULL: 'null',
};

NutrientLevels _$NutrientLevelsFromJson(Map<String, dynamic> json) =>
    NutrientLevels(
      fat: Fat.fromJson(json['fat'] as Map<String, dynamic>),
      salt: Fat.fromJson(json['salt'] as Map<String, dynamic>),
      saturatedFat: Fat.fromJson(json['saturatedFat'] as Map<String, dynamic>),
      sugars: Fat.fromJson(json['sugars'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NutrientLevelsToJson(NutrientLevels instance) =>
    <String, dynamic>{
      'fat': instance.fat,
      'salt': instance.salt,
      'saturatedFat': instance.saturatedFat,
      'sugars': instance.sugars,
    };

Fat _$FatFromJson(Map<String, dynamic> json) => Fat(
      level: json['level'] as String,
      per100G: (json['per100g'] as num).toDouble(),
    );

Map<String, dynamic> _$FatToJson(Fat instance) => <String, dynamic>{
      'level': instance.level,
      'per100g': instance.per100G,
    };

NutritionFacts _$NutritionFactsFromJson(Map<String, dynamic> json) =>
    NutritionFacts(
      servingSize: json['servingSize'] as String,
      calories: json['calories'],
      fat: Carbohydrate.fromJson(json['fat'] as Map<String, dynamic>),
      saturatedFat:
          Carbohydrate.fromJson(json['saturatedFat'] as Map<String, dynamic>),
      carbohydrate:
          Carbohydrate.fromJson(json['carbohydrate'] as Map<String, dynamic>),
      sugar: Carbohydrate.fromJson(json['sugar'] as Map<String, dynamic>),
      fiber: json['fiber'],
      proteins: Carbohydrate.fromJson(json['proteins'] as Map<String, dynamic>),
      sodium: Carbohydrate.fromJson(json['sodium'] as Map<String, dynamic>),
      salt: Carbohydrate.fromJson(json['salt'] as Map<String, dynamic>),
      energy: Carbohydrate.fromJson(json['energy'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NutritionFactsToJson(NutritionFacts instance) =>
    <String, dynamic>{
      'servingSize': instance.servingSize,
      'calories': instance.calories,
      'fat': instance.fat,
      'saturatedFat': instance.saturatedFat,
      'carbohydrate': instance.carbohydrate,
      'sugar': instance.sugar,
      'fiber': instance.fiber,
      'proteins': instance.proteins,
      'sodium': instance.sodium,
      'salt': instance.salt,
      'energy': instance.energy,
    };

Carbohydrate _$CarbohydrateFromJson(Map<String, dynamic> json) => Carbohydrate(
      unit: json['unit'] as String,
      perServing: json['perServing'] as String,
      per100G: json['per100g'] as String,
    );

Map<String, dynamic> _$CarbohydrateToJson(Carbohydrate instance) =>
    <String, dynamic>{
      'unit': instance.unit,
      'perServing': instance.perServing,
      'per100g': instance.per100G,
    };

Pictures _$PicturesFromJson(Map<String, dynamic> json) => Pictures(
      product: json['product'] as String,
      front: json['front'] as String,
      ingredients: json['ingredients'] as String,
      nutrition: json['nutrition'] as String,
    );

Map<String, dynamic> _$PicturesToJson(Pictures instance) => <String, dynamic>{
      'product': instance.product,
      'front': instance.front,
      'ingredients': instance.ingredients,
      'nutrition': instance.nutrition,
    };

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

class _OFFApi implements OFFApi {
  _OFFApi(
    this._dio, {
    this.baseUrl,
  });

  final Dio _dio;

  String? baseUrl;

  @override
  Future<ProductResponse> getProduct(String barcode) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'barcode': barcode};
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<ProductResponse>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/getProduct',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = ProductResponse.fromJson(_result.data!);
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }

  String _combineBaseUrls(
    String dioBaseUrl,
    String? baseUrl,
  ) {
    if (baseUrl == null || baseUrl.trim().isEmpty) {
      return dioBaseUrl;
    }

    final url = Uri.parse(baseUrl);

    if (url.isAbsolute) {
      return url.toString();
    }

    return Uri.parse(dioBaseUrl).resolveUri(url).toString();
  }
}
