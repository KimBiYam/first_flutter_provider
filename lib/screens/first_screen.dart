import 'package:first_flutter_provider/providers/counter_provider.dart';
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
    return Consumer<CounterProvider>(
      builder: (BuildContext context, CounterProvider counterProvider,
              Widget child) =>
          Scaffold(
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
                '${counterProvider.count}',
                style: Theme.of(context).textTheme.headline4,
              ),
              RaisedButton(
                onPressed: () =>
                    Navigator.of(context).pushNamed(SecondScreen.id),
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
                onPressed: () => counterProvider.increment(),
                tooltip: 'Increment',
                child: Icon(Icons.add),
              ),
              SizedBox(
                height: 15,
              ),
              FloatingActionButton(
                heroTag: 'Decrement',
                onPressed: () => counterProvider.decrement(),
                tooltip: 'Decrement',
                child: Icon(Icons.remove),
              ),
              SizedBox(
                height: 15,
              ),
              FloatingActionButton(
                heroTag: 'Reset',
                onPressed: () => counterProvider.reset(),
                tooltip: 'Reset',
                child: Icon(Icons.refresh),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
