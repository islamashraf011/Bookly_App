import 'dart:io';

// this line to Solve Handshake error in client OS (Api Certificate Validation)
// HttpOverrides.global = MyHttpOverrides();
// Put this line in main file to work.

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}
