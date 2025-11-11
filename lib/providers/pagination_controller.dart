import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'pagination_controller.g.dart';

@riverpod
class PaginationController extends _$PaginationController {
  @override
  PaginationState build() => PaginationState(
        offset: 0,
        limit: 20, // your default batch size
      );

  void loadNext() {
    state = state.copyWith(offset: state.offset + state.limit);
  }

  void reset() {
    state = PaginationState(offset: 0, limit: 20);
  }
}

class PaginationState {
  final int offset;
  final int limit;

  PaginationState({required this.offset, required this.limit});

  PaginationState copyWith({int? offset, int? limit}) {
    return PaginationState(
      offset: offset ?? this.offset,
      limit: limit ?? this.limit,
    );
  }
}
