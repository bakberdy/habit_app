abstract class Failure {
  String get message;
  const Failure();
}

class UnknownFailure extends Failure {
  final String _message;

  UnknownFailure(this._message);
  @override
  String get message => _message;
}
