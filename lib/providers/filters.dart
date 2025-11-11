import 'package:pokedex/constants/app_lists.dart';
import 'package:pokedex/helpers/filters_utils.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'filters.g.dart';

@Riverpod(keepAlive: true)
class Filters extends _$Filters {
  @override
  List<bool> build() => List.filled(AppLists.tipos.length, false);

  void toggle(int index) {
    final newFilters = List<bool>.from(state);
    newFilters[index] = !newFilters[index];
    state = newFilters;
  }

  void clearFilters() {
    final newFilters = List.filled(AppLists.tipos.length, false);
    state = newFilters;
  }

  List<String> get activeTypes {
    final indices = getActiveIndices(state);
    return getActiveTypes(indices, AppLists.tipos);
  }
}
