class ValueId {
  String? idOrNull;

  ValueId._(this.idOrNull);

  factory ValueId.create() {
    return ValueId._(DateTime.now().microsecondsSinceEpoch.toString());
  }

  factory ValueId.parse(int value) {
    if (value < 0) return null as ValueId;

    return ValueId._(value.toString());
  }

  factory ValueId.from(String value) {
    return ValueId.parse(int.parse(value));
  }

  String get() => idOrNull ?? '';

  void set(String value) => idOrNull = value;
}
