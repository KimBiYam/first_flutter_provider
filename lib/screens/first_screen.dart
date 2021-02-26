import 'package:first_flutter_provider/notifiers/count_notifier.dart';
import 'package:first_flutter_provider/screens/second_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FirstScreen extends StatefulWidget {
  static final id = '/FirstScreen';

  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '${context.watch<CounterNotifier>().count}',
              style: Theme.of(context).textTheme.headline4,
            ),
            RaisedButton(
              onPressed: () => Navigator.of(context).pushNamed(SecondScreen.id),
              child: Text('Second Screen'),
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              heroTag: 'Increment',
              onPressed: () => context.read<CounterNotifier>().increment(),
              tooltip: 'Increment',
              child: Icon(Icons.add),
            ),
            SizedBox(
              height: 15,
            ),
            FloatingActionButton(
              heroTag: 'Decrement',
              onPressed: () => context.read<CounterNotifier>().decrement(),
              tooltip: 'Decrement',
              child: Icon(Icons.remove),
            ),
            SizedBox(
              height: 15,
            ),
            FloatingActionButton(
              heroTag: 'Reset',
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
