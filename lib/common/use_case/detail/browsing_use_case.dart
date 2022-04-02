import '../../intention.dart';

import '../common/use_case.dart';

class BrowsingUseCase<T extends Object> extends UseCase<T> {
  BrowsingUseCase({
    required Intention<T> intent,
  }) : super(intent: intent);

  @override
  void execute() {
    intent.dispatch(() async {
      await intent.model.query().browse().then((ids) async {
        for (final id in ids) {
          intent.reading(id).execute();
        }
      });

      for (final entry in intent.model.readables.entries) {
        final id = entry.key;
        final readable = await entry.value;
        final unreadable = readable == false;

        if (unreadable) intent.deleting(id).execute();
      }
    });
  }
}
