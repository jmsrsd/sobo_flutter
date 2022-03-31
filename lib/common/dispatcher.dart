import 'dart:async';
import 'dart:collection';
import 'dart:developer';

import 'package:rxdart/rxdart.dart';

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
    required Future<void> Function() refresh,
  }) {
    stream.add(() async {
      queue.addLast(action);
      await refresh();

      await queue.first();
      await refresh();

      queue.removeFirst();
      await refresh();
    });
  }
}
