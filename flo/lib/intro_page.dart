import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flo/screens/signin_screen.dart';

import 'package:flutter/material.dart';

class Intro extends StatefulWidget {
  @override
  _IntroState createState() => _IntroState();
}

class _IntroState extends State<Intro> with SingleTickerProviderStateMixin {
  AnimationController _animationController;

  @override
  void initState() {
    _animationController =
        new AnimationController(vsync: this, duration: Duration(seconds: 3));
    _animationController.repeat();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  "assets/images/VR.gif",
                  height: 150.0,
                  width: 300.0,
                ),
              ],
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width - 30,
              child: TypewriterAnimatedTextKit(
                isRepeatingAnimation: false,
                speed: Duration(milliseconds: 80),
                onTap: () {
                  print("Tap Event");
                },
                text: [
                  "'CyberPunk is not a TARGET its a THREAT'",
                  "2020:",
                  "OuTbreak of a deadly virus,",
                  "And a deadly ANTIDOTE. ",
                  "Leaders in Biomedical Technogy were in  haste of PROFITS.",
                  "Living in each other's PARANOIA , competitive enough to cripple the entire population for life.",
                  "The antidote killed the virus but,",
                  "Slowly began PARALYSING lower body of people.",
                  "They were no longer able to reproduce,existence of physical sports was a dream, everything below their Stomatch was NUMB and DUMP.",
                  "Leaders in Gaming industry  made huge profits even with absence of functional legs Since, they sold ESCAPISM. VR industry kicked in 2022 ,they knew people were addicted to EACAPISM from real world , a world with more wheelchairs than Bread. VR devices were made affordable . ",
                  "Binge watching TV shows was no longer a ACCOMPLISHMENT. Getting a good job , becoming rich, finding a parter and PRODUCING genetically perfect CHILDREN  in VR was.",
                  "As Usual Dopamine in Skull kicked IN and people made VR their LIFE. VR was no longer a LUXURY it Became  LIFESTYLE.",
                  "Automobile Industry,tourism , Airways all COLLAPSED, People were able to travel with speed of sound in VR, They no longer needed real world",
                  "DO U WISH TO ESCAPE ?"
                ],
                textStyle: TextStyle(
                    fontSize: 30.0, fontFamily: "CM", color: Colors.white),
              ),
            ),
            Spacer(),
            FadeTransition(
              opacity: _animationController,
              child: FlatButton(
                onPressed: () => Navigator.pushReplacement(
                    context,
                    new MaterialPageRoute(
                        builder: (context) => SignInScreen())),
                child: Text(
                  "ESCAPE",
                  style: TextStyle(
                      fontFamily: "HACKED",
                      color: Colors.purpleAccent,
                      fontSize: 30),
                ),
                color: Colors.transparent,
              ),
            ),
          ],
        ));
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
}
