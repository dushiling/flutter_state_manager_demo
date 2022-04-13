import 'package:flutter/cupertino.dart';
import 'EasyP.dart';

class EasyPBuilder<T extends ChangeNotifier> extends StatelessWidget {
  const EasyPBuilder(
      this.builder, {
        Key? key,
      }) : super(key: key);

  final Widget Function() builder;

  @override
  Widget build(BuildContext context) {
    EasyP.register<T>(context);
    return builder();
  }
}
