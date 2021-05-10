import 'package:first_flutter_provider/providers/counter_provider.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late final CounterProvider counterProvider;

  setUp(() {
    counterProvider = CounterProvider();
  });

  test('should increment count', () {
    counterProvider.increment();

    expect(counterProvider.count, 1);
  });
}
