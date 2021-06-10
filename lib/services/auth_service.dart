import 'dart:convert';

import 'package:hypernews/utilities/api_util.dart';
import 'package:http/http.dart' as http;
import 'package:hypernews/utilities/token_util.dart';

class AuthService {
  final TokenUtil tokenUtil = TokenUtil();
  final Map<String, String> headers = {
    'accept': 'application/json',
    'content-type': 'application/json'
  };
  Future<dynamic> register(
      {required String email, required String password}) async {
    try {
      http.Response response = await http.post(Uri.parse(ApiUtil.REGISTER_URL),
          headers: headers,
          body: jsonEncode({
            'username': email,
            'email': email,
            'password': password,
            'confirmed': true,
            'provider': 'local'
          }));
      var data = jsonDecode(response.body);
      await tokenUtil.saveToken(data['jwt']);
      return response.body;
    } catch (e) {
      throw Exception(e);
    }
  }

  Future login({required String email, required String password}) async {
    try {
      http.Response response = await http
          .post(Uri.parse(ApiUtil.LOGIN_URL), headers: headers, body: {
        'identifier': email,
        'password': password,
      });
      var data = jsonDecode(response.body);
      await tokenUtil.saveToken(data['jwt']);
      return response.body;
    } catch (e) {
      throw Exception(e);
    }
  }
}
