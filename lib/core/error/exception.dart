class AppException implements Exception {
  final String _defaultMessage = "Error occured";
  String get message => _defaultMessage;
  AppException();
}

class ParsingDataException extends AppException {
  @override
  final String message;

  ParsingDataException(this.message);

  @override
  String toString() => 'ParsingDataException: $message';
}

class NotFoundException extends AppException {
  @override
  final String message;

  NotFoundException([this.message = "Resource not found"]);

  @override
  String toString() => 'NotFoundException: $message';
}
