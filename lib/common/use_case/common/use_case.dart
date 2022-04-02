import '../../intention.dart';

abstract class UseCase<T extends Object> {
  final Intention<T> intent;

  UseCase({required this.intent});

  void execute();
}
