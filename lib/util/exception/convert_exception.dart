class ConvertException implements Exception {
  const ConvertException(this.message);

  final String message;

  @override
  String toString() => 'ConvertException: $message';
}
