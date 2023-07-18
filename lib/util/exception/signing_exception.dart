class SigningException implements Exception {
  const SigningException(this.message, this.display);

  final String message;
  final String display;

  @override
  String toString() => 'SigningException: $message';
}
