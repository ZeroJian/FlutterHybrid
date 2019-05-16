import 'package:flutter/material.dart';
import 'package:flutter_boost/flutter_boost.dart';

import 'package:my_flutter/my_flutter_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  
  @override
  void initState() {
    super.initState();

     FlutterBoost.singleton.registerPageBuilders({
      'MyFlutterPage': (pageName, params, _) => MyFlutterPage(),
    });

    FlutterBoost.handleOnStartPage();
  }
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ZeroJian",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: AppBarTheme(color: Colors.blue),
      ),
      builder: FlutterBoost.init(),
      home: Container(),
    );
  }
}



