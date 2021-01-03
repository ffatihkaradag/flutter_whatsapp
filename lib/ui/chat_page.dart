import 'package:flutter/material.dart';
import 'package:flutter_whatsapp/theme/colors.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Center(
        child: Text(
          "Chat Page",
          style: TextStyle(
            fontSize: 23,
            color: white,
          ),
        ),
      ),
    );
  }
}
