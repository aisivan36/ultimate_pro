import 'package:flutter/material.dart';
import 'package:imaging/global_theme/e_commerce_screen_after.dart';

/// This is the main Global_Theme
/// This code will run if you change in the runApp main instead of in the home body widget.
class GlobalTheme extends StatelessWidget {
  const GlobalTheme({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Global Theme',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.green,
      ),
      home: ECommerceScreen(),
    );
  }
}
