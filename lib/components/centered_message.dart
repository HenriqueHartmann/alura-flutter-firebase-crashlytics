import 'package:flutter/material.dart';

class CenteredMessage extends StatelessWidget {
  const CenteredMessage(
    this.message, {
    required this.icon,
    this.iconSize = 64,
    this.fontSize = 24,
    Key? key
  }) : super(key: key);

  final String message;
  final IconData icon;
  final double iconSize;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Visibility(
            child: Icon(
              icon,
              size: iconSize,
            ),
            visible: icon != null,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 24.0),
            child: Text(
              message,
              style: TextStyle(fontSize: fontSize),
            ),
          ),
        ],
      ),
    );
  }
}
