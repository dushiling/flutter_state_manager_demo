import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'counter_logic.dart';

class CounterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final logic = Get.put(CounterLogic());
    final state = Get.find<CounterLogic>().state;

    return Scaffold(

        appBar: AppBar(title: Text('计数器')),
        // 使用Obx(()=>每当改变计数时，就更新Text()。
        body: Obx(() {
          return Center(child: Text('点击了 ${state.count} 次',style: TextStyle(fontSize: 30),));
        }),
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add), onPressed: logic.increment));
  }
}
