import 'package:first_flutter_provider/providers/counter_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SecondScreen extends StatelessWidget {
  static final id = '/SecondScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen'),
      ),
      body: Consumer<CounterProvider>(
        builder: (BuildContext context, CounterProvider counterProvider,
                Widget child) =>
            Center(
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
            ],
          ),
        ),
      ),
    );
  }
}
