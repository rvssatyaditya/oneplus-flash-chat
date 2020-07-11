import 'package:flutter/material.dart';
import '../../constants.dart';

class InputTextField extends StatelessWidget {
  const InputTextField({
    @required this.onChanged,
    this.hintText = kInputTextFieldHintText,
    this.hintTextStyle = kInputTextFieldHintStyle,
    this.textFieldBorderRadius = kInputTextFieldBorderRadius,
    this.enabledBorderRadius = kInputTextFieldEnabledBorderRadius,
    this.focusedBorderSideRadius = kInputTextFieldFocusedBorderRadius,
    this.enabledBorderSideWidth = kInputTextFieldEnabledBorderSideWidth,
    this.focusedBorderSideWidth = kInputTextFieldFocusedBorderSideWidth,
    this.enabledBorderSideColour = kInputTextFieldEnabledBorderSideColour,
    this.focusedBorderSideColour = kInputTextFieldFocusedBorderSideColour,
    this.verticalTextContentPadding = kInputTextFieldVerticalContentPadding,
    this.horizontalTextContentPadding = kInputTextFieldHorizontalContentPadding,
    Key key,
  }) : super(key: key);

  final String hintText;
  final Function onChanged;
  final TextStyle hintTextStyle;
  final double enabledBorderRadius;
  final double textFieldBorderRadius;
  final Color enabledBorderSideColour;
  final double enabledBorderSideWidth;
  final double focusedBorderSideWidth;
  final Color focusedBorderSideColour;
  final double focusedBorderSideRadius;
  final double verticalTextContentPadding;
  final double horizontalTextContentPadding;

  @override
  Widget build(BuildContext context) {
    //Todo: move defaults to constants
    return TextField(
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: hintTextStyle,
        contentPadding: EdgeInsets.symmetric(
            vertical: verticalTextContentPadding,
            horizontal: horizontalTextContentPadding),
        border: OutlineInputBorder(
          borderRadius:
              BorderRadius.all(Radius.circular(textFieldBorderRadius)),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: enabledBorderSideColour, width: enabledBorderSideWidth),
          borderRadius: BorderRadius.all(Radius.circular(enabledBorderRadius)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: focusedBorderSideColour, width: focusedBorderSideWidth),
          borderRadius:
              BorderRadius.all(Radius.circular(focusedBorderSideRadius)),
        ),
      ),
    );
  }
}
