import '../../intention.dart';

import '../common/use_case.dart';

class EditingUseCase<T extends Object> extends UseCase<T> {
  final String id;
  final T data;

  EditingUseCase({
    required Intention<T> intent,
    required this.id,
    required this.data,
  }) : super(intent: intent);

  @override
  void execute() {
    intent.dispatch(() async {
      await intent.model.query().edit(id, data);
      intent.model.cache[id] = data;
    });
  }
}
