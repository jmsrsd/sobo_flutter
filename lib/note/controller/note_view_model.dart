import '../../common/data/query/data_query.dart';
import '../../common/model/view_model.dart';
import '../../common/singleton.dart';
import '../model/note_data.dart';
import 'note_repository.dart';

class NoteViewModel extends ViewModel<NoteData> {
  NoteViewModel._();

  factory NoteViewModel() {
    return Singleton<NoteViewModel>().get(() {
      return NoteViewModel._()..browsing().execute();
    });
  }

  @override
  DataQuery<NoteData> get query => NoteRepository().query();
}
