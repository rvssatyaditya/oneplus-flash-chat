import 'package:flash_chat/components/textFields/input_text_field.dart';
import 'package:flutter/material.dart';
import '../components/buttons/action_button.dart';

class RegistrationScreen extends StatefulWidget {
  static String id = 'registration_screen';
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Hero(
              tag: 'lightning',
              child: Container(
                height: 200.0,
                child: Image.asset('images/logo.png'),
              ),
            ),
            SizedBox(
              height: 48.0,
            ),
            InputTextField(
              hintText: 'Enter your Email',
              onChanged: (value) {},
            ),
            SizedBox(
              height: 8.0,
            ),
            InputTextField(
              hintText: 'Enter your Password',
              onChanged: (value) {},
            ),
            SizedBox(
              height: 24.0,
            ),
            ActionButtons(
              verticalPadding: 16.0,
              buttonBorderRadius: 30.0,
              buttonElevation: 5.0,
              onPressed: () {
                Navigator.pushNamed(context, RegistrationScreen.id);
              },
              minButtonWidth: 200.0,
              buttonHeight: 42.0,
              buttonChildWidget: Text('Register'),
              buttonColour: Colors.blueAccent,
            ),
          ],
        ),
      ),
    );
  }
}
