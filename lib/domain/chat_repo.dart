import 'package:chat_with_gpt/domain/data/client/client.dart';
import 'package:chat_with_gpt/domain/entity/message_entity.dart';
import 'package:chat_with_gpt/domain/entity/message_request_entity.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';

abstract class ChatRepo {
  Future<Message?> sendPromt(MessageParam promt);
}

class ChatRepoImp implements ChatRepo {
  final ChatClient _client;

  ChatRepoImp(this._client);
  @override
  Future<Message?> sendPromt(MessageParam promt) {
    return _client
        .posHttps('v1/completions', promt)
        .then((value) => Message.fromJson(value.data));
  }
}
