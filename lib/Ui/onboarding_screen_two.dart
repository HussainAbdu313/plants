import 'package:flutter/material.dart';
import 'package:plants/Ui/onboarding_screen_three.dart';
import 'package:plants/constants.dart';

class OnboardingScreenTwo extends StatefulWidget {
  const OnboardingScreenTwo({super.key});

  @override
  State<OnboardingScreenTwo> createState() => _OnboardingScreenTwoState();
}

class _OnboardingScreenTwoState extends State<OnboardingScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,

      // # 1 Image Plants

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              child: Image(image: AssetImage("assets/Images/Indoor Plants 02.jpg"),
              ),
            ),
          ),

          // # 2 Title

          SizedBox(height: 15,),
          Text(
            "Find a plant lover friends",
            style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Constants.primaryColor,
          ),),

          // # 3 Descriptions

          SizedBox(height: 10,),
          Text(
            "Are you a plant Lover? Connect with other plant lovers.",
            style: TextStyle(
            fontSize: 22,
            color: Colors.grey,
            fontWeight: FontWeight.w400,
          ),
            textAlign: TextAlign.center,)
        ]
      ),

      // # 4 Next Page

      floatingActionButton: Padding(
        padding:  EdgeInsets.only(right:15 ,bottom: 20,),
        child: FloatingActionButton(
            onPressed: (){
              Navigator.pushReplacement(
                  context, MaterialPageRoute(
                  builder: (context) => OnboardingScreenThree(),
              ));
            },
          child: Icon(
            Icons.arrow_circle_right,
            size: 45,
            color: Constants.primaryColor,
          ),
        ),
      ),
    );
  }
}
