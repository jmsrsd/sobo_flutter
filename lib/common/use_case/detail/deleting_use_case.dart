import '../../model/intent_model.dart';

import '../common/use_case.dart';

class DeletingUseCase<T extends Object> extends UseCase<T> {
  final String id;

  DeletingUseCase({
    required IntentModel<T> intent,
    required this.id,
  }) : super(intent: intent);

  @override
  void execute() {
    intent.dispatch(() async {
      await intent.model.query().delete(id);
      intent.model.cache.remove(id);
    });
  }
}
