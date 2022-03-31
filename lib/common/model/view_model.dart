import 'package:flutter/material.dart';

import '../data/query/data_query.dart';
import '../use_case/common/use_case.dart';
import '../use_case/detail/adding_use_case.dart';
import '../use_case/detail/browsing_use_case.dart';
import '../use_case/detail/deleting_use_case.dart';
import '../use_case/detail/editing_use_case.dart';
import '../use_case/detail/opening_use_case.dart';
import 'model.dart';

abstract class ViewModel<T extends Object> extends Model<T> {
  void open(BuildContext context, WidgetBuilder builder) {
    dispatch(() async {
      Navigator.push(
        context,
        MaterialPageRoute(builder: builder),
      ).then((_) => browsing().execute());
    });
  }

  DataQuery<T> get query;

  UseCase<T> browsing() {
    return BrowsingUseCase<T>(
      viewModel: this,
      query: query,
    );
  }

  UseCase<T> reading(BuildContext context, String id, WidgetBuilder builder) {
    return OpeningUseCase<T>(
      viewModel: this,
      query: query,
      context: context,
      id: id,
      builder: builder,
    );
  }

  UseCase<T> adding(T Function(String id) factory) {
    return AddingUseCase<T>(
      viewModel: this,
      query: query,
      factory: factory,
    );
  }

  UseCase<T> editing(String id, T data) {
    return EditingUseCase<T>(
      viewModel: this,
      query: query,
      id: id,
      data: data,
    );
  }

  UseCase<T> deleting(String id) {
    return DeletingUseCase<T>(
      viewModel: this,
      query: query,
      id: id,
    );
  }
}
