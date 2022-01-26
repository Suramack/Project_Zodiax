import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zodiax/Components/style.dart';
import 'package:zodiax/Screens/Home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        cupertinoOverrideTheme: NoDefaultCupertinoThemeData(
          brightness: Brightness.dark,
          textTheme: CupertinoTextThemeData(
            dateTimePickerTextStyle: cupertinoTextStyle(),
          ),
        ),
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}
