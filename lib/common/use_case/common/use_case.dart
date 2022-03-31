import '../../data/query/data_query.dart';
import '../../model/view_model.dart';

abstract class UseCase<T extends Object> {
  final ViewModel<T> viewModel;
  final DataQuery<T> query;

  UseCase({
    required this.viewModel,
    required this.query,
  });

  void execute();
}
