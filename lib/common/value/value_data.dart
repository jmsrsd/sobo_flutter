class ValueData<T extends Object> {
  final T Function() generate;

  T? dataOrNull;

  ValueData.create(this.generate);

  T get data => dataOrNull ??= generate();

  set data(T? value) => dataOrNull = value;
}
