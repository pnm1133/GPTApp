import 'dart:io';

import 'package:dio/dio.dart';

class ChatClient {
  ChatClient._();
  static final ChatClient _instance = ChatClient._();
  static ChatClient get I => _instance;

  final String author = 'api.openai.com';

  void getHttp(String path) async {
    try {
      final uri = Uri.https(author, path);
      var response = await Dio().getUri(uri);
      print(response);
    } catch (e) {
      print(e);
    }
  }

  Future<Response> posHttps<T>(String path, T param) async {
    try {
      //'v1/models/text-davinci-003'
      final uri = Uri.https(author, path);
      var response = await Dio().postUri(uri,
          data: param,
          options: Options(
            headers: {
              'Content-Type': 'application/json',
              'Authorization': 'Bearer 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'
            },
            sendTimeout: 1000,
          ));
      return response;
    } catch (e) {
      print('e ${e.toString()}');
      return Future.error(const SocketException.closed());
    }
  }
}
