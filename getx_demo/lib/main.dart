import 'package:flutter/material.dart';
import 'counter/counter_view.dart';
import 'custom_state_manager/EasyX/use/easyx_counter_view.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GetX Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: CounterPage(),
    );

    // CounterPage(): //范例
    //EasyXCounterPage():自定义状态管理框架
  }
}


