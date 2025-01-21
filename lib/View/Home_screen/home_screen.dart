import 'package:flutter/material.dart';
import 'package:plants/constants.dart';
import 'package:plants/dummydb.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  final List<String> _plantTypes = [
    "INDOOR",
    "OUTDOOR",
    "POTS",
  ];

  bool toggleIsFavorited(bool isFavorited) {
    return !isFavorited;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(.5),

      // # 1 AppBar

      appBar: AppBar(
        backgroundColor: Colors.grey.withOpacity(.0),
        elevation: 0,
        title: const Text(
          "Welcome to",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(
              Icons.notification_add,
              size: 30,
              color: Colors.black,
            ),
          ),
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // # 2 Plant Shop Title

            Text(
              "Plant Shop",
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
            const SizedBox(height: 10),

            // # 3 Search Bar

            Padding(
              padding: const EdgeInsets.all(20),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search),
                  hintText: "Search Plants",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                cursorColor: Colors.white,
              ),
            ),

            // # 4 Category Selector

            SizedBox(
              height: 50,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount:_plantTypes.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal:5),
                    child: GestureDetector(

                      onTap: () {
                        setState(() {
                          selectedIndex = index;
                        });
                      },


                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 5),
                        decoration: BoxDecoration(
                          color: selectedIndex == index
                              ? Constants.primaryColor
                              : Colors.white,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Center(
                          child: Text(
                            _plantTypes[index],
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: selectedIndex == index
                                  ? Colors.white
                                  : Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),

            const SizedBox(height: 25),

            // # 5 Plant Grid

            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 25,
                  crossAxisSpacing: 30,
                  mainAxisExtent: 320,

                  // childAspectRatio: 0.65,
                ),
                itemCount: DummyDatabase.indoorPlants.length,
                itemBuilder: (BuildContext context, int index) {

                  // # 6 Plants photos in card model

                  return Card(

                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius:BorderRadius.circular(12)
                    ),
                    child:Padding(
                      padding: const EdgeInsets.only(top: 5,bottom: 7,right: 5,left: 5),
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        children: [

                         Stack(
                           children: [
                             Image.asset(DummyDatabase.indoorPlants[index]["image id"],
                               height: 220,
                               width: double.infinity,
                               fit: BoxFit.fill,
                             ),
                             Positioned(
                               top: 4,
                               right: 4,
                               child: Align(
                                   // alignment:Alignment.topRight ,
                                   child: IconButton(
                                     onPressed: (){
                                     },
                                     icon: Icon(Icons.favorite_border,size: 23,),
                                   )
                               ),
                             ),
                           ],
                         ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            textAlign: TextAlign.start,
                            DummyDatabase.indoorPlants[index]["name"],
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.green
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [

                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Text(
                                  "\$${DummyDatabase.indoorPlants[index]["price"]}",
                                  style: const TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              Icon(Icons.add_box_outlined)
                            ],
                          ),
                      ],
                      ),
                    ),

                  );
                  // return SizedBox(
                  //   child: Container(
                  //     width: 300,
                  //     decoration: BoxDecoration(
                  //       // borderRadius: BorderRadius.circular(10),
                  //       border: Border(bottom: BorderSide.none,top: BorderSide.none),
                  //       color: Colors.white,
                  //     ),
                  //     child: SizedBox(
                  //       width: 300,
                  //       child: Column(
                  //         crossAxisAlignment: CrossAxisAlignment.start,
                  //         children: [
                  //           Positioned(
                  //             top:10,
                  //             right: 20,
                  //             child: ClipRRect(
                  //               borderRadius: const BorderRadius.vertical(
                  //                   top: Radius.circular(5)),
                  //               child: Image.asset(
                  //                 DummyDatabase.indoorPlants[index]["image id"],
                  //                 height: 210,
                  //                 width: double.infinity,
                  //                 fit: BoxFit.fill,
                  //               ),
                  //             ),
                  //           ),
                  //           SizedBox(
                  //             height: 20,
                  //           ),
                  //           Padding(
                  //             padding: const EdgeInsets.all(9.0),
                  //             child: Text(
                  //               DummyDatabase.indoorPlants[index]["name"],
                  //               style: const TextStyle(
                  //                 fontSize: 18,
                  //                 fontWeight: FontWeight.bold,
                  //               ),
                  //             ),
                  //           ),
                  //           Padding(
                  //             padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  //             child: Text(
                  //               "\$${DummyDatabase.indoorPlants[index]["price"]}",
                  //               style: const TextStyle(
                  //                 fontSize: 16,
                  //                 color: Colors.black,
                  //               ),
                  //             ),
                  //           ),
                  //         ],
                  //       ),
                  //     ),
                  //   ),
                  // );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
