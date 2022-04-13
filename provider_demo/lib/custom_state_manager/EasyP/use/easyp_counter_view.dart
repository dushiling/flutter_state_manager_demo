import 'package:flutter/material.dart';

import '../ChangeNotifierEasyP.dart';
import '../EasyP.dart';
import '../EasyPBuilder.dart';
import 'easyp_counter_provider.dart';

class EasyPCounterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierEasyP(
      create: (BuildContext context) => EasyPCounterProvider(),
      builder: (context) => _buildPage(context),
    );
  }

  Widget _buildPage(BuildContext context) {
    final easyP = EasyP.of<EasyPCounterProvider>(context);

    return Scaffold(
      appBar: AppBar(title: Text('自定义状态管理框架-EasyP范例')),
      body: Center(
        child: EasyPBuilder<EasyPCounterProvider>(() {
          return Text(
            '点击了 ${easyP.count} 次',
            style: TextStyle(fontSize: 30.0),
          );
        }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => easyP.increment(),
        child: Icon(Icons.add),
      ),
    );
  }
}