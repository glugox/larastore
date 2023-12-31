class TypeSupport {

  bool isType<T, Y>() => T == Y;

  // Convert Type to String
  String typeToString(Type type) {
    return '$type';
  }
}