import 'package:flutter/material.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;

void main() {
  runApp(const ChatApp());
}

class ChatApp extends StatelessWidget {
  const ChatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ChatScreen(),
    );
  }
}

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  late IO.Socket socket;
  TextEditingController userIdController = TextEditingController();
  TextEditingController driverIdController = TextEditingController();
  TextEditingController messageController = TextEditingController();
  List<String> messages = [];

  @override
  void initState() {
    super.initState();
    socket = IO
        .io('https://commuter-server-socket-io.onrender.com', <String, dynamic>{
      'transports': ['websocket'],
    });

    socket.onConnect(
      (data) {
        print('Connected');
      },
    );

    socket.on('chat message', (data) {
      setState(() {
        messages.add(data['message']);
      });
    });

    socket.on('load messages', (data) {
      setState(() {
        messages = List<String>.from(data.map((msg) => msg['message']));
      });
    });

    socket.onError(
      (data) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text(data['message']),
        ));
      },
    );
  }

  void joinRoom() {
    socket.emit('join room', {
      'userId': userIdController.text,
      'driverId': driverIdController.text,
    });
  }

  void sendMessage() {
    socket.emit('chat message', {
      'userId': userIdController.text,
      'driverId': driverIdController.text,
      'message': messageController.text,
    });
    messageController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chat Room'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: userIdController,
              decoration: const InputDecoration(labelText: 'User ID'),
            ),
            TextField(
              controller: driverIdController,
              decoration: const InputDecoration(labelText: 'Driver ID'),
            ),
            ElevatedButton(
              onPressed: joinRoom,
              child: const Text('Join Room'),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: messages.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(messages[index]),
                  );
                },
              ),
            ),
            TextField(
              controller: messageController,
              decoration: const InputDecoration(labelText: 'Message'),
            ),
            ElevatedButton(
              onPressed: sendMessage,
              child: const Text('Send Message'),
            ),
          ],
        ),
      ),
    );
  }
}
