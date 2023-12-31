class LarastoreException implements Exception {
  final String message;
  LarastoreException({this.message = 'Unknown'});

  @override
  String toString() {
    return message;
  }
}