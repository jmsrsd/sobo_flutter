import 'package:flutter/material.dart';

import 'model/view_model.dart';
import 'use_case/common/use_case.dart';
import 'use_case/detail/adding_use_case.dart';
import 'use_case/detail/browsing_use_case.dart';
import 'use_case/detail/deleting_use_case.dart';
import 'use_case/detail/editing_use_case.dart';
import 'use_case/detail/opening_use_case.dart';
import 'use_case/detail/reading_use_case.dart';

class Intention<T extends Object> {
  final ViewModel<T> model;

  Intention.of(this.model);

  void dispatch(Future<void> Function() action) {
    model.dispatch(action);
  }

  void open(BuildContext context, WidgetBuilder builder) {
    dispatch(() async {
      Navigator.push(
        context,
        MaterialPageRoute(builder: builder),
      ).then((_) => browsing().execute());
    });
  }

  UseCase<T> browsing() {
    return BrowsingUseCase<T>(intent: this);
  }

  UseCase<T> reading(String id) {
    return ReadingUseCase(intent: this, id: id);
  }

  UseCase<T> adding(T Function(String id) create) {
    return AddingUseCase<T>(intent: this, create: create);
  }

  UseCase<T> editing(String id, T data) {
    return EditingUseCase<T>(intent: this, id: id, data: data);
  }

  UseCase<T> deleting(String id) {
    return DeletingUseCase<T>(intent: this, id: id);
  }

  UseCase<T> opening(BuildContext context, String id, WidgetBuilder builder) {
    return OpeningUseCase<T>(
      intent: this,
      context: context,
      id: id,
      builder: builder,
    );
  }
}
