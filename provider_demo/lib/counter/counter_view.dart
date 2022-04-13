import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'counter_provider.dart';

class CounterPage extends StatelessWidget {
  TextEditingController ttt=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => CounterProvider(),
      builder: (context, child) => _buildPage(context),
    );
  }

  Widget _buildPage(BuildContext context) {
    final provider = context.read<CounterProvider>();
    final state = provider.state;


    return Scaffold(
      appBar: AppBar(title: Text('Provider-Easy范例')),
      body: Center(
        child: Consumer<CounterProvider>(
          builder: (context, provider, child) {
            return Text(
              '点击了 ${state.count} 次',
              style: TextStyle(fontSize: 30.0),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => provider.increment(),
        child: Icon(Icons.add),
      ),
    );
  }
}