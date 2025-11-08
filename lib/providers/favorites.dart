import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'favorites.g.dart';

@Riverpod(keepAlive: true)
class Favorites extends _$Favorites {
  @override
  List<String> build() => [];

  void toggle(String id) {
    if (state.contains(id)) {
      final newState = List<String>.from(state);
      newState.remove(id);
      state = newState;
    } else {
      state = [...state, id];
    }
  }

  bool isFav(String id) => state.contains(id);
}
