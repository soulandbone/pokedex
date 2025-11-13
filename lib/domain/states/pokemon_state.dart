import 'package:pokedex/domain/entities/pokemon_full/pokemon_full.dart';

abstract class PokemonState {}

class PokemonLoading extends PokemonState {}

class PokemonLoaded extends PokemonState {
  PokemonLoaded(this.fullPokemons);
  final List<PokemonFull> fullPokemons;
}

class PokemonError extends PokemonState {
  PokemonError(this.message);

  final String message;
}
