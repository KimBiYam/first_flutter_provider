import 'package:first_flutter_provider/providers/counter_provider.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late CounterProvider counterProvider;

  setUp(() {
    counterProvider = CounterProvider();
  });

  test('should increment count', () {
    counterProvider.increment();

    expect(counterProvider.count, 1);
  });

  test('should decrement count', () {
    counterProvider.decrement();

    expect(counterProvider.count, -1);
  });

  test('should reset count', () {
    counterProvider.increment();
    counterProvider.reset();

    expect(counterProvider.count, 0);
  });
}
