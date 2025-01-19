import 'package:flutter/material.dart';
import 'package:plants/constants.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      // # 1 AppBar

      appBar: AppBar(
        title: Text(
            "Welcome to ",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w500
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20,),
            child: Icon(Icons.notification_add,size: 30,),
          )
        ],
      ),

      // # 2 Name

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              "Plant Shop",
              style: TextStyle(
                  fontSize: 35,
                  color: Constants.primaryColor,
                  fontWeight: FontWeight.bold,
              ),),
          ),
          SizedBox(
            height: 10,
          ),

          // # 3 SearchBar Button

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
            child: SearchBar(
              leading: Icon(Icons.search),
              hintText: "Search",
            ),
          ),

          // # 4 Catergory Indoor & outdoor

          SizedBox(height: 25,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 80),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Text(
                      "INDOOR",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic

                    ),
                  ),
                ),

                // #  5 Outdoor

                Container(
                  child: Text(
                    "OUTDOOR",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
