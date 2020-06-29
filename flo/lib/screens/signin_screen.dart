import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flo/screens/note_it_list.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Container(
              //color: Colors.black,
              child: Image.asset(
                'assets/images/hand.gif',
                height: MediaQuery.of(context).size.height,
                //  fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: MediaQuery.of(context).size.height - 720),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      SizedBox(
                        width: 20.0,
                        height: 100.0,
                      ),
                      FadeAnimatedTextKit(
                        duration: Duration(milliseconds: 700),
                        onTap: () {
                          print("Tap Event");
                        },
                        isRepeatingAnimation: true,
                        totalRepeatCount: 20,
                        text: ["Well", "Hell"],
                        // alignment: Alignment(1.0, 0.5),
                        textStyle: TextStyle(
                            fontSize: 50.0,
                            fontFamily: "CM",
                            color: Colors.purpleAccent),
                      ),
                      Text(
                        "Come",
                        style: TextStyle(
                            fontSize: 50, fontFamily: "CM", color: Colors.blue),
                      ),
                      FadeAnimatedTextKit(
                        duration: Duration(milliseconds: 700),
                        onTap: () {
                          print("Tap Event");
                        },
                        isRepeatingAnimation: true,
                        totalRepeatCount: 20,
                        text: [":(", ":)"],
                        // alignment: Alignment(1.0, 0.5),
                        textStyle: TextStyle(
                            fontSize: 50.0,
                            fontFamily: "HACKED",
                            color: Colors.purpleAccent),
                      ),
                      SizedBox(
                        width: 20.0,
                        height: 100.0,
                      ),
                    ],
                  ),
                  // Text(
                  //   "Wel_come:}",
                  //   style: TextStyle(
                  //       fontSize: 70,
                  //       color: Colors.purpleAccent,
                  //       fontFamily: "HACKED"),
                  // ),
                  Text(
                    "Login.",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.purpleAccent,
                        fontFamily: "TER"),
                  ),
                  SizedBox(height: 10),
                  Container(
                      width: 320,
                      padding:
                          EdgeInsets.only(left: 10.0, right: 17, bottom: 20),
                      child: TextFormField(
                          autocorrect: true,
                          decoration: InputDecoration(
                            hintText: 'Name',
                            hintStyle: TextStyle(
                                color: Colors.blue, fontFamily: "TER"),
                            enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12.0)),
                              borderSide:
                                  BorderSide(color: Colors.blue, width: 2),
                            ),
                          ))),
                  Container(
                      width: 320,
                      padding: EdgeInsets.only(left: 10.0, right: 17),
                      child: TextFormField(
                          autocorrect: true,
                          decoration: InputDecoration(
                            hintText: 'Password',
                            hintStyle: TextStyle(color: Colors.blue),
                            enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12.0)),
                              borderSide:
                                  BorderSide(color: Colors.blue, width: 2),
                            ),
                          ))),
                  SizedBox(height: 300),
                  Container(
                    //color: Colors.greenAccent,
                    width: 320,
                    decoration: BoxDecoration(
                        // border: Border(
                        //   left: BorderSide(
                        //     //                   <--- left side
                        //     color: Colors.pink,
                        //     width: 5.0,
                        //   ),
                        //   top: BorderSide(
                        //     //                    <--- top side
                        //     color: Colors.purple,
                        //     style: BorderStyle.solid,
                        //     width: 3.0,
                        //   ),
                        // ),
                        ),
                    padding: EdgeInsets.only(left: 10.0, right: 17, bottom: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        ColorizeAnimatedTextKit(
                          isRepeatingAnimation: true,
                          totalRepeatCount: 20,
                          onTap: () {
                            _showcontent();

                            //adaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
                          },
                          text: [
                            "PRO_ceed",
                            //"Commence",
                            //"Start Sim",
                          ],
                          textStyle:
                              TextStyle(fontSize: 50.0, fontFamily: "HACKED"),
                          colors: [
                            // Colors.purple,
                            Colors.cyan,
                            Colors.purpleAccent,
                            Colors.blue,
                          ],
                        ),

                        // Text("Pro_Seed",
                        //     style: TextStyle(
                        //         fontSize: 20,
                        //         color: Colors.purpleAccent,
                        //         fontFamily: "TER")),
                      ],
                    ),
                  ),
                  // Image.asset(
                  //   "assets/images/VR.gif",
                  //   height: 250.0,
                  //   width: 250.0,
                  // )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  void _showcontent() {
    showDialog(
      context: context, barrierDismissible: false, // user must tap button!

      builder: (BuildContext context) {
        return new AlertDialog(
          backgroundColor: Colors.black,
          title: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              FadeAnimatedTextKit(
                duration: Duration(milliseconds: 300),
                onTap: () {
                  print("Tap Event");
                },
                isRepeatingAnimation: true,
                totalRepeatCount: 20,
                text: ["MATURED", "MESSED"],
                // alignment: Alignment(1.0, 0.5),
                textStyle: TextStyle(
                    fontSize: 20.0,
                    fontFamily: "CM",
                    color: Colors.purpleAccent),
              ),
              Text(
                "Audience only.",
                style: TextStyle(
                    fontSize: 20, fontFamily: "CM", color: Colors.blue),
              ),
              SizedBox(
                width: 20.0,
                height: 100.0,
              ),
            ],
          ),
          content: new SingleChildScrollView(
            child: new ListBody(
              children: [
                new Text(
                  "Rated 'A' for adultrated!",
                  style:
                      TextStyle(fontFamily: "TER", color: Colors.purpleAccent),
                ),
                Image.asset(
                  "assets/images/motion.gif",
                  // height: 250.0,
                  // width: 250.0,
                )
              ],
            ),
          ),
          actions: [
            new FlatButton(
              child: Expanded(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    FadeAnimatedTextKit(
                      duration: Duration(milliseconds: 300),

                      isRepeatingAnimation: true,
                      totalRepeatCount: 20,
                      text: ["Visit", "Enter"],
                      // alignment: Alignment(1.0, 0.5),
                      textStyle: TextStyle(
                          fontSize: 20.0, fontFamily: "CM", color: Colors.blue),
                    ),
                    Text(
                      " Personal Journal",
                      style: TextStyle(
                          fontSize: 10,
                          fontFamily: "CM",
                          color: Colors.purpleAccent),
                    ),
                    SizedBox(
                      width: 20.0,
                      height: 100.0,
                    ),
                  ],
                ),
              ),
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => NoteList()));
              },
            ),
          ],
        );
      },
    );
  }
}
