import '../../model/intent_model.dart';

abstract class UseCase<T extends Object> {
  final IntentModel<T> intent;

  UseCase({required this.intent});

  void execute();
}
