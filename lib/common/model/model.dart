import 'package:rxdart/rxdart.dart';

import '../dispatcher.dart';

abstract class Model<T extends Object> {
  final stream = BehaviorSubject<Model<T>>();
  final dispatcher = Dispatcher();
  final cache = <String, T>{};

  T? selectedOrNull;

  T initialData();

  T get selected {
    return selectedOrNull ?? initialData();
  }

  set selected(T value) {
    selectedOrNull = value;
  }

  bool get loading {
    return dispatcher.dispatching;
  }

  void select(String id) {
    dispatch(() async => selectedOrNull = cache[id]);
  }

  void dispatch(Future<void> Function() action) {
    dispatcher.dispatch(
      action: action,
      refresh: () async => stream.add(this),
    );
  }
}
