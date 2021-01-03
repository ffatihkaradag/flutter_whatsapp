import 'package:flutter/material.dart';
import 'package:flutter_whatsapp/theme/colors.dart';

class CameraPage extends StatefulWidget {
  @override
  _CameraPageState createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Center(
        child: Text(
          "Camera Page",
          style: TextStyle(
            fontSize: 23,
            color: white,
          ),
        ),
      ),
    );
  }
}
