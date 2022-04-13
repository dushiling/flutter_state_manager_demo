import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'counter0_bloc.dart';

class Counte0Page extends StatelessWidget {
  // const Counte0Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => Counter0Bloc(),
      child: Builder(builder: (context) => _buildPage(context)),
    );
  }

  Widget _buildPage(BuildContext context) {
    final bloc = BlocProvider.of<Counter0Bloc>(context);

    return Scaffold(
      appBar: AppBar(title: Text('Bloc-Bloc-8.0+范例')),
      body: Center(
        child: BlocBuilder<Counter0Bloc, Counter0State>(
          builder: (context, state) {
            return Text(
              '点击了 ${bloc.state.count} 次',
              style: TextStyle(fontSize: 30.0),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => bloc.add(IncrementEvent(bloc.state.count)),
        child: Icon(Icons.add),
      ),
    );
  }
}
