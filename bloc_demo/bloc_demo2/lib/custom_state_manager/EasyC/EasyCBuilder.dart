import 'dart:async';
import 'package:flutter/cupertino.dart';

import 'EasyC.dart';
import 'EasyCProvider.dart';

class EasyCBuilder<T extends EasyC<V>, V> extends StatefulWidget {
  const EasyCBuilder({
    Key? key,
    required this.builder,
  }) : super(key: key);

  final Function(BuildContext context, V state) builder;

  @override
  _EasyCBuilderState createState() => _EasyCBuilderState<T, V>();
}

class _EasyCBuilderState<T extends EasyC<V>, V>
    extends State<EasyCBuilder<T, V>> {
  late T _easyC;
  late V _state;
  StreamSubscription<V>? _listen;

  @override
  void initState() {
    _easyC = EasyCProvider.of<T>(context);
    _state = _easyC.state;

    //数据改变刷新Widget
    _listen = _easyC.stream.listen((event) {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return widget.builder(context, _state);
  }

  @override
  void dispose() {
    _listen?.cancel();
    super.dispose();
  }
}
