import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../EasyCBuilder.dart';
import '../EasyCProvider.dart';
import 'easyc_conuter_cubit.dart';
import 'easyc_conuter_state.dart';

class EasyCCounterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return EasyCProvider(
      create: (BuildContext context) => EasyCCounterCubit(),
      child: Builder(builder: (context) => _buildPage(context)),
    );
  }

  Widget _buildPage(BuildContext context) {
    final easyC = EasyCProvider.of<EasyCCounterCubit>(context);

    return Scaffold(
      appBar: AppBar(title: Text('自定义状态管理框架-EasyC范例')),
      body: Center(
        child: EasyCBuilder<EasyCCounterCubit, EasyCCounterState>(
          builder: (context, state) {
            return Text(
              '点击了 ${easyC.state.count} 次',
              style: TextStyle(fontSize: 30.0),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => easyC.increment(),
        child: Icon(Icons.add),
      ),
    );
  }
}
