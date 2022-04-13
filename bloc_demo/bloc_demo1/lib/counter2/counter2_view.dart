import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'counter2_cubit.dart';
import 'counter2_state.dart';

class Counter2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => Counter2Cubit(),
      child: Builder(builder: (context) => _buildPage(context)),
    );
  }

  Widget _buildPage(BuildContext context) {
    final cubit = BlocProvider.of<Counter2Cubit>(context);

    return Scaffold(
      appBar: AppBar(title: Text('Bloc-Cubit-8.0+范例')),
      body: Center(
        child: BlocBuilder<Counter2Cubit, Counter2State>(
          builder: (context, state) {
            return Text(
              '点击了 ${cubit.state.count} 次',
              style: TextStyle(fontSize: 30.0),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => cubit.increment(),
        child: Icon(Icons.add),
      ),
    );
  }
}


