//possible to be thrown from remote data source
class ServerException implements Exception {
  final String message;

  ServerException({this.message = 'Server Error'});
}

class FormatException implements Exception {
  final String message;

  FormatException(this.message);
}

class DataFormatException implements Exception {
  final String message;

  DataFormatException(this.message);
}
