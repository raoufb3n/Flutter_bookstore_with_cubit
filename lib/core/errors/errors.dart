abstract class Failure {
  final String errMessage = 'error';
}

class ServerFailure extends Failure {}

class NetworkFailure extends Failure {}
