import 'package:flutter/material.dart';
import '../../constants.dart';

class ActionButtons extends StatelessWidget {
  ActionButtons({
    Key key,
    this.context,
    this.buttonColour = kActionButtonColour,
    this.buttonHeight = kActionButtonHeight,
    this.buttonElevation = kActionButtonElevation,
    this.minButtonWidth = kActionButtonMinButtonWidth,
    this.buttonBorderRadius = kActonButtonBorderRadius,
    this.verticalPadding = kActionButtonVerticalPadding,
    @required this.onPressed,
    @required this.buttonChildWidget,
  }) : super(key: key);

  final double verticalPadding;
  final double buttonElevation;
  final Color buttonColour;
  final double buttonBorderRadius;
  final Function onPressed;
  final Widget buttonChildWidget;
  final BuildContext context;
  final double minButtonWidth;
  final double buttonHeight;

  @override
  Widget build(BuildContext context) {
    // Todo: move defaults to constants
    return Padding(
      padding: EdgeInsets.symmetric(vertical: verticalPadding),
      child: Material(
        elevation: buttonElevation,
        color: buttonColour,
        borderRadius: BorderRadius.circular(buttonBorderRadius),
        child: MaterialButton(
            onPressed: onPressed,
            minWidth: 200.0,
            height: 42.0,
            child: buttonChildWidget),
      ),
    );
  }
}
