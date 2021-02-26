import 'package:first_flutter_provider/count.dart';
import 'package:first_flutter_provider/count_notifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => CounterNotifier())],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Count(),
          ],
        ),
      ),
      floatingActionButton: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: () => context.read<CounterNotifier>().increment(),
              tooltip: 'Increment',
              child: Icon(Icons.add),
            ),
            SizedBox(
              height: 15,
            ),
            FloatingActionButton(
              onPressed: () => context.read<CounterNotifier>().decrement(),
              tooltip: 'Decrement',
              child: Icon(Icons.remove),
            ),
            SizedBox(
              height: 15,
            ),
            FloatingActionButton(
              onPressed: () => context.read<CounterNotifier>().reset(),
              tooltip: 'Reset',
              child: Icon(Icons.refresh),
            ),
          ],
        ),
      ),
    );
  }
}
