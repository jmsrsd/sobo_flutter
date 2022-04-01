class Singleton<T extends Object> {
  static final collection = <Type, dynamic>{};

  T get(T Function() create) => (collection[T] ??= create()) as T;
}
