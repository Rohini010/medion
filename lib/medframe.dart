import 'package:flutter/material.dart';
import 'package:medion/MEDICATION/q5AsYes/ONCE/Que72.dart';
import 'package:medion/MEDICATION/q5AsYes/ONCE/Que73duration.dart';
import 'package:medion/MEDICATION/que62.dart';
import 'package:medion/MEDICATION/q5AsYes/ONCE/que71.dart';
import 'package:medion/MEDICATION/Q5AnSNO/Q5ANS_NO.dart';
// ignore: unused_import
import 'package:medion/REFILL/refill3.dart';
import 'package:medion/doctor/Dctor1.dart';
import 'package:medion/HOME/MORE.dart';
// ignore: unused_import
//import 'package:medion/back.dart';
import 'package:medion/create_login.dart';
//import 'package:medion/doctor/d.dart';
// ignore: unused_import
import 'package:medion/home_signin_widget.dart';
import 'package:medion/HOME/homepage.dart';
import 'package:medion/HOME/hpage.dart';
import 'package:medion/measurement/measure1.dart';
// ignore: unused_import
import 'package:medion/MEDICATION/que4.dart';
import 'package:medion/MEDICATION/que5.dart';
import 'package:medion/MEDICATION/new1.dart';
import 'package:medion/MEDICATION/que2.dart';
import 'package:medion/MEDICATION/q5AsYes/ONCE/que7.dart';
//import 'package:medion/que1.dart';
import 'package:medion/sign_in.dart';

// ignore: must_be_immutable
class MedFrame extends StatelessWidget {
  PageController pageController = PageController();
  Duration _animationDuration = Duration(milliseconds: 500);

  // ignore: unused_element
  void _changePage(int page) {
    pageController.animateToPage(page,
        duration: _animationDuration, curve: Curves.easeIn);
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        child: Column(
          children: [
            SafeArea(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 26.0),
                child: Column(
                  children: <Widget>[
                    Container(
                        //padding: EdgeInsets.symmetric(
                        // horizontal: 20.0,
                        //vertical: 10.0),
                        ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: PageView(
                // physic
                // s: NeverScrollableScrollPhysics(),
                //    controller: pageController,ggg
                children: <Widget>[   Que71(),
                  HomePage(),

                  HomeSignInWidegt(
                    goToPageCallback: (page) {
                      _changePage(page);
                    },
                    goToSignIn: () {
                      pageController.animateToPage(1,
                          duration: Duration(milliseconds: 200),
                          curve: Curves.easeIn);
                    },
                    goToSignUp: () {
                      pageController.animateToPage(2,
                          duration: Duration(milliseconds: 200),
                          curve: Curves.easeIn);
                    },
                  ),

                  HomePage(),

                  Que62(),
                  Que7(),
                  Que71(),
                  Que6Ans(),
                  Duration1(),
                  Que72(),
                  HomePage(),

                  HomePage(),

                  Doctor(),

                  Doctor(),
                  HomePage(),
                  Doctor(),
                  Que1(),
                  HPVieww(), Que1(),
                  HomePage(),
                  Que2(),

                  Que2(),
                  Que1(),
                  HomePage(),
                  // CreateLogin(),
                  SignIn(),
                  HomePage(),
                  Measure1(),

                  Doctor(),
                  HomePage(),
                  // Que4(),
                  Que2(),
                  Que5(),
                  //   Que4(),
                  HomePage(),

                  More(),
                  Doctor(),
                  HomePage(),
                  Doctor(),

                  Que7(),
                  CreateLogin(cancelBackToHome: () {
                    pageController.animateToPage(0,
                        duration: Duration(milliseconds: 200),
                        curve: Curves.easeIn);
                  }),

                  //  Que4(),

                  Que2(),
                  Que1(),
                  //  New(),

                  HomeSignInWidegt(
                    goToPageCallback: (page) {
                      _changePage(page);
                    },
                    goToSignIn: () {
                      pageController.animateToPage(1,
                          duration: Duration(milliseconds: 200),
                          curve: Curves.easeIn);
                    },
                    goToSignUp: () {
                      pageController.animateToPage(2,
                          duration: Duration(milliseconds: 200),
                          curve: Curves.easeIn);
                    },
                  ),
                  SignIn(
                    goToSignUpp: () {
                      pageController.animateToPage(1,
                          duration: Duration(milliseconds: 200),
                          curve: Curves.easeIn);
                    },
                  ),
                  CreateLogin(cancelBackToHome: () {
                    pageController.animateToPage(0,
                        duration: Duration(milliseconds: 200),
                        curve: Curves.easeIn);
                  }),
                ],
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(
          //shape: BoxShape.rectangle,
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.blue, Colors.blueGrey]),
        ),
      ),
    );
  }
}
