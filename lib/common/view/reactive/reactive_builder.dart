import 'package:flutter/material.dart';

import '../../model/intent_model.dart';
import '../../model/model.dart';
import 'reactive_view.dart';

class ReactiveBuilder<T extends Object> extends StatelessWidget {
  final ReactiveView<T> view;
  final void Function() init;
  final Widget Function(
    BuildContext context,
    IntentModel<T> intent,
    bool loading,
  ) builder;

  const ReactiveBuilder({
    Key? key,
    required this.view,
    required this.init,
    required this.builder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    init();

    return StreamBuilder<Model<T>>(
      stream: view.intent.model.stream,
      builder: (context, snapshot) {
        return builder(context, view.intent, view.intent.model.loading);
      },
    );
  }
}
