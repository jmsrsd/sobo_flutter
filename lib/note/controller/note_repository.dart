import 'dart:convert';

import '../../common/data/query/data_query.dart';
import '../../common/data/query/default_data_query.dart';
import '../../common/data/source/data_source.dart';
import '../../common/singleton.dart';
import '../model/note_data.dart';

class NoteRepository extends DataSource<NoteData> {
  NoteRepository._() : super('note');

  factory NoteRepository() {
    return Singleton<NoteRepository>().get(() {
      return NoteRepository._();
    });
  }

  DataQuery<NoteData> query() {
    return DefaultDataQuery<NoteData>(this, name);
  }

  @override
  NoteData decode(String encoded) {
    try {
      return NoteData.fromJson(jsonDecode(encoded));
    } catch (e) {
      return NoteData();
    }
  }

  @override
  String encode(NoteData decoded) {
    try {
      return jsonEncode(decoded.toJson());
    } catch (e) {
      return jsonEncode({});
    }
  }
}
