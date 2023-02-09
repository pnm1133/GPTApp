import 'package:chat_with_gpt/domain/entity/message_entity.dart';
import 'package:chat_with_gpt/domain/entity/message_request_entity.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';

class MessageUseCase extends UseCase<Message,MessageParam> {


  @override
  Future<Stream<Message?>> buildUseCaseStream(MessageParam? params) {
    // TODO: implement buildUseCaseStream
    throw UnimplementedError();
  }
}