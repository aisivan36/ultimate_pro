import 'package:flutter/material.dart';
import 'package:imaging/global_theme/global_main_screen.dart';
import 'package:imaging/neesting/deep_tree.dart';
// import 'package:imaging/FlexHome/flex_screen.dart';

/// To test some code you have to change in the main [runaApp]
void main() {
  runApp(GlobalTheme());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        ///
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blueGrey,
      ),

      /// Some alose with this in the home body widget. Read with througly.
      home: DeepTree(),
    );
  }
}
