import 'package:flutter/material.dart';

import '../../data/query/data_query.dart';
import '../../model/view_model.dart';
import '../common/use_case.dart';

class OpeningUseCase<T extends Object> extends UseCase<T> {
  final BuildContext context;
  final String id;
  final WidgetBuilder builder;

  OpeningUseCase({
    required ViewModel<T> viewModel,
    required DataQuery<T> query,
    required this.context,
    required this.id,
    required this.builder,
  }) : super(viewModel: viewModel, query: query);

  @override
  void execute() {
    viewModel.select(id);
    viewModel.open(context, builder);
  }
}
