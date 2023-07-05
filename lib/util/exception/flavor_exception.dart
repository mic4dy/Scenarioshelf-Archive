class FlavorException implements Exception {
  const FlavorException(this.message);

  final String message;

  @override
  String toString() => 'FlavorException: $message';
}
