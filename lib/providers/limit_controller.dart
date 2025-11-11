import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'limit_controller.g.dart';

@Riverpod(keepAlive: true)
class LimitController extends _$LimitController {
  @override
  int build() => 20; // batch size
  void increment(int step) => state += step;
}
