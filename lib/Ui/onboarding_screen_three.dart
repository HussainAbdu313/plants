import 'package:flutter/material.dart';
import 'package:plants/View/Home_screen/home_screen.dart';
import 'package:plants/constants.dart';

class OnboardingScreenThree extends StatefulWidget {
  const OnboardingScreenThree({super.key});

  @override
  State<OnboardingScreenThree> createState() => _OnboardingScreenThreeState();
}

class _OnboardingScreenThreeState extends State<OnboardingScreenThree> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child:Container(
              child: Image(
                  image: AssetImage(
                      "assets/Images/Indoor Plants 04.jpg"
                  )),
            ) ,
          ),
          SizedBox(height: 20,),
          Text(
              "Plant a tree , green the Earth",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Constants.primaryColor,
              ),
          ),
          SizedBox(height: 10,),
          Text(
            "Find almost all type of plants that you like here.",
            style: TextStyle(
              fontSize: 22,
              color: Colors.grey,
              fontWeight: FontWeight.w400,
            ),
            textAlign: TextAlign.center,
          )
        ],
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(right: 15,bottom: 20),
        child: FloatingActionButton(
            onPressed: (){
              Navigator.pushReplacement(
                  context, MaterialPageRoute(
                  builder: (context) => HomeScreen(),
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