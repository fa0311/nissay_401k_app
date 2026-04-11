class NissayException implements Exception {
  NissayException(this.message);

  final String message;

  @override
  String toString() => 'NissayException: $message';
}

class NissayAuthException extends NissayException {
  NissayAuthException(super.message);
}
