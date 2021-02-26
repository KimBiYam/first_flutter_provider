import 'package:first_flutter_provider/notifiers/count_notifier.dart';
import 'package:first_flutter_provider/screens/first_screen.dart';
import 'package:first_flutter_provider/screens/second_screen.dart';
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
        initialRoute: FirstScreen.id,
        routes: {
          FirstScreen.id: (context) => FirstScreen(),
          SecondScreen.id: (context) => SecondScreen(),
        },
      ),
    );
  }
}
