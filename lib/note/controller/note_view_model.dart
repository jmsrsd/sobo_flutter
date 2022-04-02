import '../../common/intention.dart';

import '../../common/data/query/data_query.dart';
import '../../common/model/view_model.dart';
import '../../common/singleton.dart';
import '../../common/value/value_data.dart';
import '../model/note_data.dart';
import 'note_repository.dart';

class NoteViewModel extends ViewModel<NoteData> {
  NoteViewModel._({required ValueData<NoteData> value}) : super(value: value);

  factory NoteViewModel() {
    return Singleton<NoteViewModel>().get(() {
      final instance = NoteViewModel._(
        value: ValueData.create(() => NoteData()),
      );

      final intent = Intention.of(instance);
      intent.browsing().execute();

      return instance;
    });
  }

  @override
  DataQuery<NoteData> query() => NoteRepository().query();
}
