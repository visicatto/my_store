class AuthException implements Exception {
  static const Map<String, String> errors = {
    'EMAIL_EXISTS': 'E-mail already registered.',
    'INVALID_PASSWORD':
        'The account name or password that you have entered is incorrect.',
    'USER_DISABLED': 'User disabled.',
    'OPERATION_NOT_ALLOWED': 'Operation not allowed.',
    'TOO_MANY_ATTEMPTS_TRY_LATER': 'Access temporarily blocked. Try later.',
    'EMAIL_NOT_FOUND': 'E-mail not found.',
  };
  final String key;

  AuthException(this.key);

  @override
  String toString() {
    return errors[key] ?? 'There was an error in the authentication process.';
  }
}
