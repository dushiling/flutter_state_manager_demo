import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class EasyBuilder<T> extends StatelessWidget {
  const EasyBuilder(
      this.builder, {
        Key? key,
      }) : super(key: key);

  final Widget Function() builder;

  @override
  Widget build(BuildContext context) {
    Provider.of<T>(context);
    return builder();
  }
}
