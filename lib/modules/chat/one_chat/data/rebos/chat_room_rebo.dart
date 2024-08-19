import 'package:commuter_driver/core/local_storage/models/user_secret_data_model.dart';
import 'package:commuter_driver/core/models/user_type_enum.dart';
import 'package:commuter_driver/core/networking/socket_io_consts.dart';
import 'package:commuter_driver/modules/chat/one_chat/data/models/emit_msg_model.dart';
import 'package:commuter_driver/modules/chat/one_chat/data/models/join_room_model.dart';
import 'package:socket_io_client/socket_io_client.dart' as socketIo;

class OneChatRoomRebo {
  final UserSecretDataModel _secretDataModel;

  OneChatRoomRebo({
    required UserSecretDataModel secretDataModel,
  }) : _secretDataModel = secretDataModel;
  void joinRoom(String friendId, socketIo.Socket socket) {
    final joinRoomModel = JoinRoomModel(
      userId: friendId,
      driverId: _secretDataModel.userId,
    );
    socket.emit(SocketIoConsts.joinRoomEvent, joinRoomModel.toJson());
  }

  void sendMessage({
    required String message,
    required String friendId,
    required socketIo.Socket socket,
  }) {
    final emitMsgModel = EmitMsgModel(
      senderId: _secretDataModel.userId,
      senderType: UserType.driver.name,
      receiverId: friendId,
      receiverType: UserType.user.name,
      message: message,
    );
    socket.emit(SocketIoConsts.sendMessageEvent, emitMsgModel.toJson());
  }
}
