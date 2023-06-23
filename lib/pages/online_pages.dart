import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class OnlinePages extends StatefulWidget {
  const OnlinePages({super.key});

  @override
  State<OnlinePages> createState() => _OnlinePagesState();
}

class _OnlinePagesState extends State<OnlinePages> {
  List imageList = [
    {"id": 2, "image_path": 'assets/images/virtual1.jpg'},
    {"id": 1, "image_path": 'assets/images/virtual2.jpg'},
    {"id": 2, "image_path": 'assets/images/virtual3.jpg'},
    {"id": 2, "image_path": 'assets/images/virtual4.jpg'},
  ];
  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.red),
        backgroundColor: Colors.white,
        title: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
            padding: const EdgeInsets.only(right: 40),
            child: Center(
              child: Center(
                child: Image.asset(
                  'assets/images/balchitrakala -2.png',
                  scale: 26,
                ),
              ),
            ),
          )
        ]),
        actions: [
          IconButton(onPressed: () {}, icon: (Icon(Icons.notification_add))),
          SizedBox(
            height: 20,
          ),
        ],
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                InkWell(
                  onTap: () {
                    print(currentIndex);
                  },
                  child: CarouselSlider(
                    items: imageList
                        .map(
                          (item) => Image.asset(
                            item['image_path'],
                            fit: BoxFit.cover,
                            scale: 3,
                            width: double.infinity,
                          ),
                        )
                        .toList(),
                    carouselController: carouselController,
                    options: CarouselOptions(
                      scrollPhysics: const BouncingScrollPhysics(),
                      autoPlay: true,
                      aspectRatio: 2,
                      viewportFraction: 1,
                      onPageChanged: (index, reason) {
                        setState(() {
                          currentIndex = index;
                        });
                      },
                    ),
                  ),
                ),
                Positioned(
                  bottom: 10,
                  left: 0,
                  right: 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: imageList.asMap().entries.map((entry) {
                      return GestureDetector(
                        onTap: () =>
                            carouselController.animateToPage(entry.key),
                        child: Container(
                          width: currentIndex == entry.key ? 17 : 7,
                          height: 7.0,
                          margin: const EdgeInsets.symmetric(
                            horizontal: 3.0,
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: currentIndex == entry.key
                                  ? Colors.red
                                  : Color.fromARGB(255, 40, 4, 201)),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ],
            ),
            Container(
              child: Column(
                children: [
                  Text(
                    textAlign: TextAlign.justify,
                    'Online Drawing Classes For Kids',
                    style: TextStyle(fontSize: 35, color: Colors.red),
                  )
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  Text(
                    textAlign: TextAlign.justify,
                    "Drawing Classes for Kids near me Live from India Mumbai Studio Virtual Zoom Art Classes for Kids Age 5yrs to 12yrs",
                    style: TextStyle(),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                      textAlign: TextAlign.justify,
                      "Welcome to I AM AN ARTIST DRAWING AND PAINTING CLASSES for KIDS INDIA AGES 5 Years old to 12 years old. Your child's CREATIVE part of the week.ART makes kids happy! See your child HAPPINESS at the best online art classes for kids in India Mumbai. I AM AN ARTIST drawing classes near me for kids offer a safe, entertaining, educational and FUN Art painting drawing classes online for kids experience, our art class for kids nurtures your child with creativity, inspiration, and encouragement.In our online Kids Art classes your child will receive maximum attention and guidance. Every child receives one-on-one art instruction from our highly skilled, Professional Artists who are passionate about YOUR child’s happiness in online painting classes for kids."),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Group Online Art Classes',
                    style: TextStyle(fontSize: 25, color: Colors.deepOrange),
                  ),
                  Text('This Detail is for Only student from India'),
                  Text(
                      'Duration: 8 hours per Month | Student Strength: 10 to 15')
                ],
              ),
            ),
            Container(
              height: 200,
              child: Row(
                children: [
                  Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width / 2 -
                        32, // minus 32 due to the margin
                    margin: EdgeInsets.all(16.0),
                    padding: EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      color:
                          Colors.yellow[100], // background color of the cards
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      boxShadow: [
                        // this is the shadow of the card
                        BoxShadow(
                          color: Colors.black,
                          spreadRadius: 0.5,
                          offset: Offset(2.0, 2.0),
                          blurRadius: 5.0,
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment
                          .end, // posion the everything to the bottom
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // place here your image
                        Text("Fundamental Course Level-1",
                            style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.brown,
                                fontWeight: FontWeight.bold)),
                        Text("Fees:₹ 1,200/- per month",
                            style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.brown,
                                fontWeight: FontWeight.bold)),
                        Text("Eligibility:3+ to 4+ years",
                            style: TextStyle(
                                fontSize: 16.0, color: Colors.orange)),
                        Text("Duration:8 to 10 months",
                            style: TextStyle(
                                fontSize: 16.0, color: Colors.orange)),
                      ],
                    ),
                  ),
                  Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width / 2 -
                        32, // minus 32 due to the margin
                    margin: EdgeInsets.all(16.0),
                    padding: EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      color:
                          Colors.yellow[100], // background color of the cards
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      boxShadow: [
                        // this is the shadow of the card
                        BoxShadow(
                          color: Colors.black,
                          spreadRadius: 0.5,
                          offset: Offset(2.0, 2.0),
                          blurRadius: 5.0,
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment
                          .end, // posion the everything to the bottom
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // place here your image
                        Text("Fundamental Course Level-2",
                            style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.brown,
                                fontWeight: FontWeight.bold)),
                        Text("Fees:₹ 1,300/- per month",
                            style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.brown,
                                fontWeight: FontWeight.bold)),
                        Text("Eligibility:5+ to 6+ years",
                            style: TextStyle(
                                fontSize: 16.0, color: Colors.orange)),
                        Text("Duration: 8 to 10 months",
                            style: TextStyle(
                                fontSize: 16.0, color: Colors.orange)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 200,
              child: Row(
                children: [
                  Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width / 2 -
                        32, // minus 32 due to the margin
                    margin: EdgeInsets.all(16.0),
                    padding: EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      color:
                          Colors.yellow[100], // background color of the cards
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      boxShadow: [
                        // this is the shadow of the card
                        BoxShadow(
                          color: Colors.black,
                          spreadRadius: 0.5,
                          offset: Offset(2.0, 2.0),
                          blurRadius: 5.0,
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment
                          .end, // posion the everything to the bottom
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // place here your image
                        Text("Intermediate Course Level-1",
                            style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.brown,
                                fontWeight: FontWeight.bold)),
                        Text("Fees: ₹ 1,400/- per month",
                            style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.brown,
                                fontWeight: FontWeight.bold)),
                        Text("Eligibility:7+ to 8+ years",
                            style: TextStyle(
                                fontSize: 16.0, color: Colors.orange)),
                        Text("Duration:8 to 10 months",
                            style: TextStyle(
                                fontSize: 16.0, color: Colors.orange)),
                      ],
                    ),
                  ),
                  Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width / 2 -
                        32, // minus 32 due to the margin
                    margin: EdgeInsets.all(16.0),
                    padding: EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      color:
                          Colors.yellow[100], // background color of the cards
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      boxShadow: [
                        // this is the shadow of the card
                        BoxShadow(
                          color: Colors.black,
                          spreadRadius: 0.5,
                          offset: Offset(2.0, 2.0),
                          blurRadius: 5.0,
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment
                          .end, // posion the everything to the bottom
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // place here your image
                        Text("Intermediate Course Level-2",
                            style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.brown,
                                fontWeight: FontWeight.bold)),
                        Text("Free:₹ 1,500/- per month",
                            style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.brown,
                                fontWeight: FontWeight.bold)),
                        Text("Eligibility:8+ to 10+ years",
                            style: TextStyle(
                                fontSize: 16.0, color: Colors.orange)),
                        Text("Duration:10 to 12 months",
                            style: TextStyle(
                                fontSize: 16.0, color: Colors.orange)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 200,
              child: Row(
                children: [
                  Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width / 2 -
                        32, // minus 32 due to the margin
                    margin: EdgeInsets.all(16.0),
                    padding: EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      color:
                          Colors.yellow[100], // background color of the cards
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      boxShadow: [
                        // this is the shadow of the card
                        BoxShadow(
                          color: Colors.black,
                          spreadRadius: 0.5,
                          offset: Offset(2.0, 2.0),
                          blurRadius: 5.0,
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment
                          .end, // posion the everything to the bottom
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // place here your image
                        Text("Advanced Course Level-1",
                            style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.brown,
                                fontWeight: FontWeight.bold)),
                        Text("Fees:₹ 1,600/- per month",
                            style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.brown,
                                fontWeight: FontWeight.bold)),
                        Text("Eligibility:11+ to 12+ years",
                            style: TextStyle(
                                fontSize: 16.0, color: Colors.orange)),
                        Text("Duration:10 to 12 months",
                            style: TextStyle(
                                fontSize: 16.0, color: Colors.orange)),
                      ],
                    ),
                  ),
                  Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width / 2 -
                        32, // minus 32 due to the margin
                    margin: EdgeInsets.all(16.0),
                    padding: EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      color:
                          Colors.yellow[100], // background color of the cards
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      boxShadow: [
                        // this is the shadow of the card
                        BoxShadow(
                          color: Colors.black,
                          spreadRadius: 0.5,
                          offset: Offset(2.0, 2.0),
                          blurRadius: 5.0,
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment
                          .end, // posion the everything to the bottom
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // place here your image
                        Text("Advanced Course Level-2",
                            style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.brown,
                                fontWeight: FontWeight.bold)),
                        Text("Fees:₹ 1,800/- per month",
                            style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.brown,
                                fontWeight: FontWeight.bold)),

                        Text("Eligibility:13+ to 14+ years",
                            style: TextStyle(
                                fontSize: 16.0, color: Colors.orange)),
                        Text("Duration:10 to 12 months",
                            style: TextStyle(
                                fontSize: 16.0, color: Colors.orange)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
