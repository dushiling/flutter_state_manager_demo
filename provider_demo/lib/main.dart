import 'package:flutter/material.dart';
import 'counter/counter_view.dart';
import 'custom_state_manager/ChangeNotifier_Single_Use/test_notifier_page.dart';
import 'custom_state_manager/Custom_Builder/CustomBuilderPage.dart';
import 'custom_state_manager/EasyP/use/easyp_counter_view.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Provider Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home:  CounterPage(),
    );

    // CounterPage(): //范例
    // TestNotifierPage()：//ChangeNotifier的单独使用
    // CustomBuilderPage(): //自定义Builder刷新
    // EasyPCounterPage()://自定义状态管理框架
  }
}

