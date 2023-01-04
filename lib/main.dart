import 'package:flutter/material.dart';
import 'package:web_socket_channel/io.dart';

import 'home_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WebSocket Demo',
      home: HomePage(
        title: 'WebSocket Demo',
        channel: IOWebSocketChannel.connect('wss://socketsbay.com/wss/v2/1/demo/777'),
      ),
    );
  }
}
