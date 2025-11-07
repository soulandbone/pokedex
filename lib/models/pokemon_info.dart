class PokemonInfo {
  PokemonInfo({
    required this.name,
    required this.description,
    required this.id,
    required this.weight,
    required this.height,
    required this.category,
    required this.skill,
    required this.gender,
    required this.weaknesses,
  });

  final String name;
  final String description;
  final int id;
  final int weight;
  final int height;
  final String category;
  final String skill;
  final int gender;
  final List<String> weaknesses;
}
