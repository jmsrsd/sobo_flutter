class ValueId {
  String? value;

  ValueId._(this.value);

  factory ValueId.create() {
    return ValueId._(DateTime.now().microsecondsSinceEpoch.toString());
  }

  factory ValueId.parse(int value) {
    if (value < 0) {
      return null as ValueId;
    }

    return ValueId._(value.toString());
  }

  factory ValueId.from(String value) {
    return ValueId.parse(int.parse(value));
  }

  String get() => value ?? '';
  void set(String value) => this.value = value;
}
