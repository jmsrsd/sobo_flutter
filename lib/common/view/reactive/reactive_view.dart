import 'package:flutter/material.dart';

import '../../intention.dart';
import '../../model/view_model.dart';

abstract class ReactiveView<T extends Object> extends StatelessWidget {
  const ReactiveView({Key? key}) : super(key: key);

  ViewModel<T> get model;

  Intention<T> get intent {
    return Intention<T>.of(model);
  }

  T? get selectedOrNull {
    return model.selected.dataOrNull;
  }

  T get selected {
    return model.selected.data;
  }

  set selected(T? value) {
    model.selected.data = value;
  }

  List<T> get collection {
    return intent.model.cache.values.toList().reversed.toList();
  }
}
