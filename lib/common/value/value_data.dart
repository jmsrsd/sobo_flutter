class ValueData<T> {
  final T Function() create;

  T? value;

  ValueData.from(this.create);

  T get() => value ??= create();

  void set(T value) => this.value = value;
}
