import 'package:sobo_flutter/common/value/value_data.dart';

import '../data/meta/controller/meta_respository.dart';
import '../data/query/data_query.dart';
import 'model.dart';

abstract class ViewModel<T extends Object> extends Model<T> {
  ViewModel({required ValueData<T> value}) : super(value);

  DataQuery<T> query();

  Map<String, Future<bool>> get readables {
    return cache.keys.toList().asMap().map((index, id) {
      return MapEntry(id, MetaRepository().query().readable(id));
    });
  }
}
