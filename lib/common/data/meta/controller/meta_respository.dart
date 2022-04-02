import '../../../singleton.dart';
import 'meta_data_source.dart';
import '../../query/meta_query.dart';

class MetaRepository extends MetaDataSource {
  MetaRepository._();

  factory MetaRepository() {
    return Singleton<MetaRepository>().get(() {
      return MetaRepository._();
    });
  }

  MetaQuery query() {
    return MetaQuery(this);
  }
}
