import '../../intention.dart';
import '../../value/value_id.dart';
import '../common/use_case.dart';

class AddingUseCase<T extends Object> extends UseCase<T> {
  final T Function(String id) create;

  AddingUseCase({
    required Intention<T> intent,
    required this.create,
  }) : super(intent: intent);

  @override
  void execute() {
    intent.dispatch(() async {
      final id = ValueId.create().get();
      final data = create(id);

      await intent.model.query().edit(id, data);
      intent.model.cache[id] = data;
    });
  }
}
