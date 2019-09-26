import 'package:flutter/material.dart';
import 'package:messio/pages/ConversationPage.dart';
import 'package:rubber/rubber.dart';

class ConversationPageSlide extends StatefulWidget {
  const ConversationPageSlide();

  @override
  _ConversationPageSlideState createState() => _ConversationPageSlideState();
}

class _ConversationPageSlideState extends State<ConversationPageSlide>
    with SingleTickerProviderStateMixin {
  var controller;

  @override
  void initState() {
    controller = RubberAnimationController(vsync: this);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: <Widget>[
        ConversationPage(),
        ConversationPage(),
        ConversationPage()
      ],
    );
  }
}
