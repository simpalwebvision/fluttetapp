import 'package:chitrakala/art/artist_art.dart';
import 'package:chitrakala/art/home_art.dart';
import 'package:chitrakala/local_notications_helper.dart';
import 'package:flutter/material.dart';

import '../controller/auth_controller.dart';
import '../src/home_page.dart';

class ClassPages extends StatefulWidget {
  const ClassPages({super.key});
  @override
  State<ClassPages> createState() => _ClassPagesState();
}

class _ClassPagesState extends State<ClassPages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.red),
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
            IconButton(
                onPressed: () {}, icon: Icon(Icons.shopping_bag_outlined)),
          ],
        ),
        drawer: Drawer(
            child: ListView(
          padding: const EdgeInsets.all(0),
          children: [
            DrawerHeader(
                decoration: const BoxDecoration(
                    gradient: LinearGradient(colors: <Color>[
                  Color.fromARGB(255, 155, 57, 235),
                  Colors.black
                ])),
                child: Container(
                  child: Column(
                    children: const <Widget>[
                      Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: Material(
                          borderRadius: BorderRadius.all(Radius.circular(50.0)),
                          elevation: 10,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(Icons.home),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Hello Binod',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      Text(
                        '13677184',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                )),
            ListTile(
              title: const Text(' Home'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ExpansionTile(
                title: Text("Competition"),
                childrenPadding: EdgeInsets.only(left: 20), //children padding
                children: [
                  ListTile(
                    title: Text("Competition"),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomeArt()));
                    },
                  ),
                  ListTile(
                    title: Text("Traning"),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ClassPages()));
                    },
                  ),
                ]),
            ListTile(
              title: const Text(' Shop'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              },
            ),
            ListTile(
              title: const Text('Artist'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ArtistArt()));
              },
            ),
            ListTile(
              title: const Text('Sell With Us '),
              onTap: () {},
            ),
            ListTile(
              title: const Text(' Logout '),
              onTap: () {
                AuthController.logOut();
              },
            ),
          ],
        )),
        body: SingleChildScrollView(
            child: Column(children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.horizontal(),
                    color: Colors.yellow),
                child: Text(
                  'Online Art and Craft Course',
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              right: 60,
            ),
            child: Text(
              'Get creative with colors with this Art and Craft course!',
              style: TextStyle(color: Colors.black, fontSize: 15),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 200),
            child: Text(
              textAlign: TextAlign.justify,
              "About The Traning :-",
              style: TextStyle(color: Colors.black, fontSize: 14),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            width: 500, //parent size
            height: 160, //parent size
            child: LayoutBuilder(builder: (context, size) {
              return Row(
                children: [
                  Container(
                    child: Image.asset(
                      'assets/images/wood.jpg',
                      scale: 1,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: Column(children: [
                      Expanded(
                        child: Container(
                            child: Text(
                          textAlign: TextAlign.justify,
                          "Do you want your child to be the next Picasso or Van Gogh? Well, the journey starts here! In these online art and craft classes, students will develop a strong foundation in art and learn several techniques inspired by world-famous artists. Art is universally considered one of the best forms of expression of emotions and creativity; this course is specially designed with a team of artists to introduce art and craft to beginners. Each student will",
                          style: TextStyle(color: Colors.black, fontSize: 12),
                        )),
                      ),
                      Expanded(
                        child: Container(
                            child: Text(
                          textAlign: TextAlign.justify,
                          "create their masterpiece with different techniques and mediums.In art, the term painting describes both the act and the result of the action the final work is called a painting The support for paintings includes such surfaces as walls, paper, canvas, wood, glass, lacquer, pottery, leaf, copper and concrete, and the painting may incorporate multiple other materials, including sand, clay, paper, plaster, gold leaf, and even whole objects.",
                          style: TextStyle(color: Colors.black, fontSize: 12),
                        )),
                      ),
                    ]),
                  ),
                ],
              );
            }),
          ),
          SizedBox(
            height: 9,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 100, left: 15),
            child: Text(
              'What you will receive',
              style: TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 1),
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                //1
                Column(
                  children: [
                    //1
                    Container(
                      width: 100,
                      height: 100,
                      child: Image.asset(
                        'assets/images/drawing-tool.png',
                        scale: 2,
                      ),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 218, 217, 217),
                        shape: BoxShape.circle,
                      ),
                    ),

                    Text(
                      'WORK WITH DIFFERENT',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                          fontWeight: FontWeight.bold),
                    ),

                    Text('Exposure to mediums like',
                        style: TextStyle(
                          color: Colors.black,
                        )),
                    Text('colour pencils',
                        style: TextStyle(
                          color: Colors.black,
                        )),
                    Text(
                      'crayons, oil pastels, and more',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    //1
                    Container(
                      width: 100,
                      height: 100,
                      child: Image.asset(
                        'assets/images/drawing-tool.png',
                        scale: 2,
                      ),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 216, 215, 215),
                        shape: BoxShape.circle,
                      ),
                    ),

                    Text(
                      'WORK WITH DIFFERENT',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                          fontWeight: FontWeight.bold),
                    ),

                    Text(
                      'Exposure to mediums like',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      'colour pencils',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      'crayons, oil pastels, and more',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                //1
                Column(
                  children: [
                    //1
                    Container(
                      width: 100,
                      height: 100,
                      child: Image.asset(
                        'assets/images/drawing-tool.png',
                        scale: 2,
                      ),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 212, 212, 212),
                        shape: BoxShape.circle,
                      ),
                    ),

                    Text(
                      'WORK WITH DIFFERENT',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                          fontWeight: FontWeight.bold),
                    ),

                    Text(
                      'Exposure to mediums like',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      'crayons,colour pencils',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      'oil pastels, and more',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    //1
                    Container(
                      width: 100,
                      height: 100,
                      child: Image.asset(
                        'assets/images/drawing-tool.png',
                        scale: 2,
                      ),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 211, 210, 210),
                        shape: BoxShape.circle,
                      ),
                    ),

                    Text(
                      'WORK WITH DIFFERENT',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Exposure to mediums like',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      'crayons,colour pencils',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      'oil pastels, and more',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 100, left: 12),
                child: Text(
                  'Course details',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              )
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                //1
                Column(
                  children: [
                    //1
                    Container(
                      width: 100,
                      height: 100,
                      child: Image.asset(
                        'assets/images/desi.jpg',
                        scale: 10,
                      ),
                    ),

                    Text(
                      'Painting',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    MaterialButton(
                        color: Colors.black,
                        onPressed: () {},
                        child: Text(
                          'ENROLL',
                          style: TextStyle(color: Colors.white),
                        ))
                  ],
                ),
                Column(
                  children: [
                    //1
                    Container(
                      width: 100,
                      height: 100,
                      child: Image.asset(
                        'assets/images/desi.jpg',
                        scale: 10,
                      ),
                    ),

                    Text(
                      'Colored Drawings',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    MaterialButton(
                        color: Colors.black,
                        onPressed: () {},
                        child: Text(
                          'ENROLL',
                          style: TextStyle(color: Colors.white),
                        ))
                  ],
                ),

                Column(
                  children: [
                    //1
                    Container(
                      width: 100,
                      height: 100,
                      child: Image.asset(
                        'assets/images/desi.jpg',
                        scale: 8,
                      ),
                    ),

                    Text(
                      'Oil Paining',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    MaterialButton(
                        color: Colors.black,
                        onPressed: () {},
                        child: Text(
                          'ENROLL',
                          style: TextStyle(color: Colors.white),
                        ))
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  //1,
                  Column(
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        child: Image.asset('assets/images/desi.jpg'),
                      ),
                      Text(
                        'Acrylic Painting',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      MaterialButton(
                          color: Colors.black,
                          onPressed: () {},
                          child: Text(
                            'ENROLL',
                            style: TextStyle(color: Colors.white),
                          ))
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        child: Image.asset('assets/images/desi.jpg'),
                      ),
                      Text(
                        'Drawing',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      MaterialButton(
                          color: Colors.black,
                          onPressed: () {},
                          child: Text(
                            'ENROLL',
                            style: TextStyle(color: Colors.white),
                          ))
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        child: Image.asset('assets/images/desi.jpg'),
                      ),
                      Text(
                        'Sketcing',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      MaterialButton(
                          color: Colors.black,
                          onPressed: () {},
                          child: Text(
                            'ENROLL',
                            style: TextStyle(color: Colors.white),
                          ))
                    ],
                  ),
                ]),
          ),
          SizedBox(
            height: 10,
          ),
          MaterialButton(
              minWidth: 100,
              color: Colors.red,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => LocalNotification()));
              },
              child: Text(
                'Login/Registration',
                style: TextStyle(color: Colors.white),
              )),
          SizedBox(
            height: 10,
          ),
          Container(
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  maxLines: 4,
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
                      hintText: 'Enter a Massgese Here',
                      hintStyle: TextStyle(color: Colors.orange),
                      fillColor: Colors.blue,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8))),
                ),
              ],
            ),
          ),
          Column(
            children: <Widget>[
              ListTile(
                leading: const Icon(Icons.email, color: Colors.black),
                title: const Text(
                  ' Support@balchitrkal.in ',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.black),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
          Column(
            children: <Widget>[
              ListTile(
                leading: const Icon(Icons.phone_android, color: Colors.black),
                title: const Text(
                  ' (+91) 8422-014-356 ',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.black),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.language, color: Colors.black),
                title: const Text(
                  ' http://balchitrakala.com/ ',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.black),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.map_sharp, color: Colors.black),
                title: const Text(
                  'B-Wing,G-5,Sargam Apartment Ramdas Near Aditya Hotel,Vasai(East),Palghar -401208. ',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                      color: Colors.black),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          )
        ])));
  }
}
