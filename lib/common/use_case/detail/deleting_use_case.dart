import '../../data/query/data_query.dart';
import '../../model/view_model.dart';
import '../common/use_case.dart';

class DeletingUseCase<T extends Object> extends UseCase<T> {
  final String id;

  DeletingUseCase({
    required ViewModel<T> viewModel,
    required DataQuery<T> query,
    required this.id,
  }) : super(viewModel: viewModel, query: query);

  @override
  void execute() {
    viewModel.dispatch(() async {
      await query.delete(id);
      viewModel.collection.remove(id);
    });
  }
}
