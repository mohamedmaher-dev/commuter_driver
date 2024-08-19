import 'package:commuter_driver/core/networking/api_consts.dart';
import 'package:commuter_driver/modules/chat/chat_rooms/data/models/chat_room_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
part 'api_chat_service.g.dart';

@RestApi(baseUrl: ApiConsts.chatBaseUrl)
abstract class ApiChatService {
  factory ApiChatService(Dio dio) = _ApiChatService;
  @GET(ApiConsts.rooms)
  Future<List<ChatRoomModel>> getRooms(
    @Path('id') String id,
  );
}
