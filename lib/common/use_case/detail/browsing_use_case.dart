import '../../../meta/controller/meta_respository.dart';
import '../../data/query/data_query.dart';
import '../../model/view_model.dart';
import '../common/use_case.dart';
import 'deleting_use_case.dart';
import 'reading_use_case.dart';

class BrowsingUseCase<T extends Object> extends UseCase<T> {
  BrowsingUseCase({
    required ViewModel<T> viewModel,
    required DataQuery<T> query,
  }) : super(viewModel: viewModel, query: query);

  @override
  void execute() {
    viewModel.dispatch(() async {
      final browsing = await query.browse();

      for (final id in browsing) {
        ReadingUseCase(
          viewModel: viewModel,
          query: query,
          id: id,
        ).execute();
      }

      final ids = viewModel.collection.keys.toList();

      final readables = ids.asMap().map((key, value) {
        return MapEntry(
          value,
          MetaRepository().readable(value),
        );
      });

      for (final readable in readables.entries) {
        if (await readable.value) continue;
        DeletingUseCase(
          viewModel: viewModel,
          query: query,
          id: readable.key,
        ).execute();
      }
    });
  }
}
