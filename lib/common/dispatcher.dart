import 'dart:async';
import 'dart:collection';
import 'dart:developer';

import 'package:rxdart/rxdart.dart';

import 'reactor.dart';

class Dispatcher {
  Dispatcher._();

  final stream = BehaviorSubject<Future<void> Function()>();
  final queue = Queue<Future<void> Function()>();

  factory Dispatcher() {
    final instance = Dispatcher._();

    instance.stream.asyncMap(instance.onDispatch).listen((_) {
      log('$Dispatcher: ${DateTime.now().toIso8601String()}');
    });

    return instance;
  }

  FutureOr<void> onDispatch(Future<void> Function() action) async {
    return await action();
  }

  bool get dispatching {
    return queue.isNotEmpty;
  }

  void dispatch({
    required Future<void> Function() action,
    required Reactor reactor,
  }) {
    stream.add(() async {
      queue.addLast(action);
      reactor.refresh();

      await queue.first();
      reactor.refresh();

      queue.removeFirst();
      reactor.refresh();
    });
  }
}
