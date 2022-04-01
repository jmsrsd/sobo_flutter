import '../../common/model/intent_model.dart';

import '../../common/data/query/data_query.dart';
import '../../common/model/view_model.dart';
import '../../common/singleton.dart';
import '../model/note_data.dart';
import 'note_repository.dart';

class NoteViewModel extends ViewModel<NoteData> {
  NoteViewModel._();

  factory NoteViewModel() {
    return Singleton<NoteViewModel>().get(() {
      final instance = NoteViewModel._();
      IntentModel.of(instance).browsing().execute();

      return instance;
    });
  }

  @override
  DataQuery<NoteData> query() => NoteRepository().query();

  @override
  NoteData initialData() => NoteData();
}
