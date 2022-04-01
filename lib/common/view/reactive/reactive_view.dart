import 'package:flutter/material.dart';

import '../../model/intent_model.dart';
import '../../model/view_model.dart';

abstract class ReactiveView<T extends Object> extends StatelessWidget {
  const ReactiveView({Key? key}) : super(key: key);

  ViewModel<T> get model;

  IntentModel<T> get intent {
    return IntentModel<T>.of(model);
  }

  T get selected {
    return model.selected;
  }

  set selected(T value) {
    model.selected = value;
  }

  List<T> get collection {
    return intent.model.cache.values.toList().reversed.toList();
  }
}
