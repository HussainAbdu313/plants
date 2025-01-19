import 'package:flutter/material.dart';
import 'package:plants/Ui/onboarding_screen_two.dart';
import 'package:plants/View/Login_screen/login_screen.dart';
import 'package:plants/constants.dart';

class OnboardingScreenOne extends StatefulWidget {
  const OnboardingScreenOne({super.key});

  @override
  State<OnboardingScreenOne> createState() => _OnboardingScreenOneState();
}

class _OnboardingScreenOneState extends State<OnboardingScreenOne> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,

      // # 1 Skip Button click go Login Pages

      appBar: AppBar(
        actions: [
          Padding(padding:const EdgeInsets.only(right: 28,top: 20),
            child: InkWell(
              onTap: (){
                Navigator.pushReplacement(
                    context, MaterialPageRoute(
                    builder: (context) => LoginScreen()));
              },
              child: Text(
                'Skip',
                style: TextStyle(
                  color: Colors.green.shade900,
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
              ),),
            ),
          )
        ],
      ),

      // # 2 Image in OnboardingScreen
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 20),
        child: Column(
          children: [
            Container(
              child: Image(
                image: AssetImage(
                    "assets/Images/Indoor Plants 01.jpg"
                ),
                width: 400,
                height: 450,
              ),
            ),

            // # 3 Title

            SizedBox(
              height: 10,
            ),
            Container(
              child: Text(
                "Learn more about plants",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Constants.primaryColor,
                ),
              ),

            ),

            // # 4 Descriptions

            SizedBox(height: 10,),
            Text(
              "Read how to care for plants in our rich plants guide.",
              style: TextStyle(
                fontSize: 22,
                color: Colors.grey,
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.center,
            ),
          ]
        ),
      ),

      // # 5 Next page

      floatingActionButton: Padding(
        padding: const EdgeInsets.only(right: 15,bottom: 20),
        child: FloatingActionButton(
            onPressed: (){
              Navigator.pushReplacement(
                  context, MaterialPageRoute(
                  builder: (context)=>OnboardingScreenTwo()));
            },
                child:Icon(
                  Icons.arrow_circle_right,
                  size: 45,
                  color: Constants.primaryColor,
                ) ,
        ),
      ),
    );
  }
}
