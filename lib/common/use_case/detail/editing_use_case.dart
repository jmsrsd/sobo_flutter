import '../../data/query/data_query.dart';
import '../../model/view_model.dart';
import '../common/use_case.dart';

class EditingUseCase<T extends Object> extends UseCase<T> {
  final String id;
  final T data;

  EditingUseCase({
    required ViewModel<T> viewModel,
    required DataQuery<T> query,
    required this.id,
    required this.data,
  }) : super(viewModel: viewModel, query: query);

  @override
  void execute() {
    viewModel.dispatch(() async {
      await query.edit(id, data);
      viewModel.collection[id] = data;
    });
  }
}
