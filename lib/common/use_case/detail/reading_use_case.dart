import '../../model/intent_model.dart';

import '../../data/meta/controller/meta_respository.dart';
import '../common/use_case.dart';

class ReadingUseCase<T extends Object> extends UseCase<T> {
  final String id;

  ReadingUseCase({
    required IntentModel<T> intent,
    required this.id,
  }) : super(intent: intent);

  @override
  void execute() {
    intent.dispatch(() async {
      switch (await MetaRepository().readable(id)) {
        case true:
          intent.model.cache[id] = await intent.model.query().read(id);
          break;
        case false:
          intent.deleting(id).execute();
          break;
      }
    });
  }
}
