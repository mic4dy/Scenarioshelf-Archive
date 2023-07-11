class ValidateException implements Exception {
  const ValidateException(this.message);

  final String message;

  @override
  String toString() => 'ValidateException: $message';
}
