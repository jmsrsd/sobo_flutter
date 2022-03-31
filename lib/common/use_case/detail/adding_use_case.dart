import '../../data/query/data_query.dart';
import '../../model/view_model.dart';
import '../common/use_case.dart';

class AddingUseCase<T extends Object> extends UseCase<T> {
  final T Function(String id) factory;

  AddingUseCase({
    required ViewModel<T> viewModel,
    required DataQuery<T> query,
    required this.factory,
  }) : super(viewModel: viewModel, query: query);

  @override
  void execute() {
    viewModel.dispatch(() async {
      final id = DateTime.now().microsecondsSinceEpoch.toString();
      final data = factory(id);

      await query.edit(id, data);
      viewModel.collection[id] = data;
    });
  }
}
