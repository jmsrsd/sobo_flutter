class Singleton<T extends Object> {
  static final collection = <Type, dynamic>{};

  T get(T Function() factory) => (collection[T] ??= factory()) as T;
}
