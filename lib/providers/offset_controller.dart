import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'offset_controller.g.dart';

@Riverpod(keepAlive: true)
class OffsetController extends _$OffsetController {
  @override
  int build() => 0; // initial offset
  void increment(int step) => state += step;
}
