import 'package:flutter/material.dart';

class MainStopWatch extends StatefulWidget {
  const MainStopWatch({Key? key}) : super(key: key);

  @override
  _MainStopWatchState createState() => _MainStopWatchState();
}

class _MainStopWatchState extends State<MainStopWatch> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter StopWatch',
      home: Scaffold(
        appBar: AppBar(
          title: Text('StopWatch'),
        ),
        body: Center(
          child: Text(
            '0 Sconds',
            style: Theme.of(context).textTheme.headline5,
          ),
        ),
      ),
    );
  }
}
