import '../../../meta/controller/meta_respository.dart';
import '../../data/query/data_query.dart';
import '../../model/view_model.dart';
import '../common/use_case.dart';
import 'deleting_use_case.dart';

class ReadingUseCase<T extends Object> extends UseCase<T> {
  final String id;

  ReadingUseCase({
    required ViewModel<T> viewModel,
    required DataQuery<T> query,
    required this.id,
  }) : super(viewModel: viewModel, query: query);

  @override
  void execute() {
    viewModel.dispatch(() async {
      switch (await MetaRepository().readable(id)) {
        case true:
          viewModel.collection[id] = await query.read(id);
          break;
        case false:
          DeletingUseCase(viewModel: viewModel, query: query, id: id).execute();
          break;
      }
    });
  }
}
