import 'package:flutter/material.dart';
import '../../intention.dart' as lib;

import '../common/use_case.dart';

class OpeningUseCase<T extends Object> extends UseCase<T> {
  final BuildContext context;
  final String id;
  final WidgetBuilder builder;

  OpeningUseCase({
    required lib.Intention<T> intent,
    required this.context,
    required this.id,
    required this.builder,
  }) : super(intent: intent);

  @override
  void execute() {
    intent.model.select(id);
    intent.open(context, builder);
  }
}
