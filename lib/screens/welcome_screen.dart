import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'registration_screen.dart';
import 'login_screen.dart';
import 'registration_screen.dart';
import '../components/buttons/action_button.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = 'welcome_screen';

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  AnimationController animationController;
  Animation curvedAnimation, tweenAnimation;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      duration: Duration(seconds: 2),
      vsync: this,
    );

    curvedAnimation = CurvedAnimation(
        parent: animationController, curve: Curves.fastOutSlowIn);
    tweenAnimation = ColorTween(begin: Colors.blueGrey, end: Colors.white)
        .animate(animationController);
    animationController.forward();
    animationController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tweenAnimation.value,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                Hero(
                  tag: 'lightning',
                  child: Container(
                    child: Image.asset('images/logo.png'),
                    height: curvedAnimation.value * 100,
                  ),
                ),
                TypewriterAnimatedTextKit(
                  text: ['Flash Chat'],
                  stopPauseOnTap: true,
                  speed: Duration(milliseconds: 300),
                  displayFullTextOnTap: true,
                  textStyle: TextStyle(
                    fontSize: 45.0,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 48.0,
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
            ActionButtons(
              verticalPadding: 16.0,
              buttonBorderRadius: 30.0,
              buttonElevation: 5.0,
              onPressed: () {
                Navigator.pushNamed(context, LoginScreen.id);
              },
              minButtonWidth: 200.0,
              buttonHeight: 42.0,
              buttonChildWidget: Text('Login'),
              buttonColour: Colors.lightBlueAccent,
            ),
          ],
        ),
      ),
    );
  }
}
