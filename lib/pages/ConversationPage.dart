import 'package:flutter/material.dart';
import 'package:messio/config/Palette.dart';
import 'package:messio/widgets/ChatAppBar.dart';
import 'package:messio/widgets/ChatListWidget.dart';
import 'package:messio/widgets/InputWidget.dart';

class ConversationPage extends StatefulWidget {
  const ConversationPage();

  @override
  _ConversationPageState createState() => _ConversationPageState();
}

class _ConversationPageState extends State<ConversationPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: ChatAppBar(), // Custom app bar for chat screen
        body: Container(
          color: Palette.chatBackgroundColor,
          child: Stack(
            children: <Widget>[
              Column(
                children: <Widget>[
                  ChatListWidget(), //Chat list
                  GestureDetector(
                    child: InputWidget(),
                    onPanUpdate: (details) {
                      if (details.delta.dy < 0) {}
                    },
                  ) // The input widget
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
