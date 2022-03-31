import 'package:rxdart/rxdart.dart';

import '../dispatcher.dart';

abstract class Model<T extends Object> {
  final stream = BehaviorSubject<Model<T>>();
  final dispatcher = Dispatcher();
  final collection = <String, T>{};

  T? selected;

  bool get loading {
    return dispatcher.dispatching;
  }

  void select(String id) {
    dispatch(() async => selected = collection[id]);
  }

  void dispatch(Future<void> Function() action) {
    dispatcher.dispatch(
      action: action,
      refresh: () async => stream.add(this),
    );
  }
}
