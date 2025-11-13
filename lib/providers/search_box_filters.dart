import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'search_box_filters.g.dart';

@Riverpod(keepAlive: true)
class SearchBoxFilters extends _$SearchBoxFilters {
  @override
  String build() => '';

  void setSearchBoxFilter(String searchParam) {
    state = searchParam;
  }
}
