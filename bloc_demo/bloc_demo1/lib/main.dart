import 'package:flutter/material.dart';

import 'Bloc插件模板/counter0_view.dart';
import 'counter/counter_view.dart';
import 'counter2/counter2_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Counte0Page(),
    );
    //Flutter Bloc 插件
    // CounterPage(): //bloc8.0- ----bloc范例
    // Counter2Page(): //bloc8.0- ---cubit范例

    //Bloc 插件
    // Counter0Page(): //bloc8.0- ----bloc范例
    // Counter1Page(): //bloc8.0- ---cubit范例


  }
}

