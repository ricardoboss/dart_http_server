import 'dart:io';

void main() async {
  final server = await HttpServer.bind(InternetAddress.anyIPv4, 7000);
  print("Server is running");
  await for (final request in server) {
    print("uri: ${request.uri}");
    print("scheme: ${request.uri.scheme}");
    print("host: ${request.uri.host}");
    print("port: ${request.uri.port}");
    print("path: ${request.uri.path}");
    print("http host: ${request.headers.host}");
    print("http port: ${request.headers.port}");

    request.response.close();
  }
}
