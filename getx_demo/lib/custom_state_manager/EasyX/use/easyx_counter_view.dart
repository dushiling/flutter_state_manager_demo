
import 'package:flutter/material.dart';

import '../Easy.dart';
import '../EasyBuilder.dart';
import 'easyx_counter_logic.dart';

class EasyXCounterPage extends StatelessWidget {
  final EasyXCounterLogic logic = Easy.put(EasyXCounterLogic());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('EasyX-自定义EasyBuilder刷新机制')),
      body: Center(
        child: EasyBuilder<EasyXCounterLogic>(builder: (logic) {
          return Text(
            '点击了 ${logic.count} 次',
            style: TextStyle(fontSize: 30.0),
          );
        }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => logic.increase(),
        child: Icon(Icons.add),
      ),
    );
  }
}

