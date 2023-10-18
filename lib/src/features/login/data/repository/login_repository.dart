import 'package:chopper/chopper.dart';

import '../api/login_api.dart';

class LoginRepository {
  LoginRepository();

  Future<Response<dynamic>> logInWithEmailAndPassword({
    required String email,
    required String pass,
  }) async {
    final chopper = ChopperClient(
      baseUrl: Uri.parse('https://fcpay-production.up.railway.app'),
      services: [LoginService.create(ChopperClient())],
      converter: const JsonConverter(),
    );

    final loginService = chopper.getService<LoginService>();

    final response = await loginService.login(
      {
        "email": email,
        "password": pass,
      },
    );
    chopper.dispose();
    return response;
  }
}
