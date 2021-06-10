import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class TokenUtil {
  static final TokenUtil _tokenUtil = TokenUtil._internal();
  late final FlutterSecureStorage storage;
  factory TokenUtil() {
    return _tokenUtil;
  }
  TokenUtil._internal() {
    storage = FlutterSecureStorage();
  }

  saveToken(String token) async {
    await storage.write(key: 'token', value: token);
  }

  Future getToken() async {
    return await storage.read(key: 'token');
  }
}
