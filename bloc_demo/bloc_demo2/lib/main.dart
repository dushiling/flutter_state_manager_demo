import 'package:flutter/material.dart';
import 'counter/counter_view.dart';
import 'counter2/counter2_view.dart';
import 'custom_state_manager/EasyC/use/easyc_conuter_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bloc Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: CounterPage(),
    );

    // CounterPage(): //bloc8.0+----bloc范例
    // Counter2Page(): //bloc8.0+---cubit范例
    // EasyCCounterPage(): //自定义状态管理框架
  }
}

