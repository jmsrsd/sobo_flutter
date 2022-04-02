import 'package:rxdart/rxdart.dart';
import 'package:sobo_flutter/common/data/meta/controller/meta_respository.dart';

import '../dispatcher.dart';
import '../reactor.dart';
import '../value/value_data.dart';

abstract class Model<T extends Object> implements Reactor {
  final stream = BehaviorSubject<Model<T>>();
  final dispatcher = Dispatcher();
  final cache = <String, T>{};
  final ValueData<T> selected;

  Model(this.selected);

  bool get loading {
    return dispatcher.dispatching;
  }

  void dispatch(Future<void> Function() action) {
    dispatcher.dispatch(
      action: action,
      reactor: this,
    );
  }

  void select(String? id) {
    dispatch(() async {
      var readable = false;

      try {
        readable = await MetaRepository().query().readable(id!);
      } catch (e) {
        readable = false;
      }

      selected.data = readable ? cache[id] : null;
    });
  }

  @override
  void refresh() => stream.add(this);
}
