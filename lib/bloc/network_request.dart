import 'package:dio/dio.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:retrofit/http.dart';

part 'network_request.g.dart';

@JsonSerializable()
class PokemonResponse {
  @JsonKey(name: "base_experience")
  final int baseExperience;
  final int height;

  PokemonResponse(this.baseExperience, this.height);

  // Copier/coller
  factory PokemonResponse.fromJson(Map<String, dynamic> json) =>
      _$PokemonResponseFromJson(json);

  Map<String, dynamic> toJson() => _$PokemonResponseToJson(this);

  @override
  String toString() {
    return 'PokemonResponse{baseExperience: $baseExperience, height: $height}';
  }
}

@RestApi()
abstract class PokemonAPI {
  factory PokemonAPI(Dio dio, {required String baseUrl}) = _PokemonAPI;

  @GET('/pokemon/ditto')
  Future<PokemonResponse> getPokemon();
}

class NetworkRequest {
  final PokemonAPI api;

  NetworkRequest()
      : api = PokemonAPI(
          Dio(),
          baseUrl: 'https://pokeapi.co/api/v2/',
        );

  Future<PokemonResponse> getProduct() {
    return api.getPokemon();
  }
}
