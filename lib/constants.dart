import 'package:flutter/material.dart';

const kSendButtonTextStyle = TextStyle(
  color: Colors.lightBlueAccent,
  fontWeight: FontWeight.bold,
  fontSize: 18.0,
);

const kMessageTextFieldDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  hintText: 'Type your message here...',
  border: InputBorder.none,
);

const kMessageContainerDecoration = BoxDecoration(
  border: Border(
    top: BorderSide(color: Colors.lightBlueAccent, width: 2.0),
  ),
);

const kInputTextFieldHintStyle = TextStyle(color: Colors.blueGrey);

// Button properties
const double kActionButtonHeight = 42.0;
const double kActionButtonElevation = 5.0;
const double kActonButtonBorderRadius = 30.0;
const double kActionButtonMinButtonWidth = 200.0;
const double kActionButtonVerticalPadding = 16.0;
const Color kActionButtonColour = Colors.blueAccent;
const Widget kActionButtonChildWidget = Text('Type your text here...');

// TextField properties
const String kInputTextFieldHintText = 'Enter a value';
const double kInputTextFieldBorderRadius = 32.0;
const double kInputTextFieldEnabledBorderRadius = 32.0;
const double kInputTextFieldFocusedBorderRadius = 32.0;
const double kInputTextFieldEnabledBorderSideWidth = 1.0;
const double kInputTextFieldFocusedBorderSideWidth = 2.0;
const double kInputTextFieldVerticalContentPadding = 10.0;
const double kInputTextFieldHorizontalContentPadding = 20.0;
const Color kInputTextFieldEnabledBorderSideColour = Colors.blueAccent;
const Color kInputTextFieldFocusedBorderSideColour = Colors.blueAccent;
