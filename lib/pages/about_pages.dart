import 'package:carousel_slider/carousel_slider.dart';
import 'package:chitrakala/art/artist_art.dart';
import 'package:chitrakala/art/home_art.dart';
import 'package:chitrakala/controller/auth_controller.dart';
import 'package:chitrakala/pages/class_pages.dart';
import 'package:chitrakala/sellwith_widgets.dart';
import 'package:flutter/material.dart';

class AboutPages extends StatefulWidget {
  const AboutPages({super.key});

  @override
  State<AboutPages> createState() => _AboutPagesState();
}

class _AboutPagesState extends State<AboutPages> {
  List imageList = [
    {"id": 2, "image_path": 'assets/images/paint2.jpg'},
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
            IconButton(onPressed: () {}, icon: (Icon(Icons.shopping_bag))),
            SizedBox(
              height: 20,
            ),
          ],
          centerTitle: true,
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
              onTap: () {},
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
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SellWithWidgets()));
              },
            ),
            ListTile(
              title: const Text('About Us '),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AboutPages()));
              },
            ),
            ListTile(
              title: const Text('Contact Us '),
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
          Stack(
            children: [
              InkWell(
                onTap: () {},
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
                    autoPlay: false,
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
              Padding(
                padding: const EdgeInsets.only(top: 150, left: 90),
                child: Text(
                  'Sell With Us',
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Column(
            children: [
              Text('Welcome To Balchitrakal',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.bold)),
              SizedBox(
                height: 10,
              ),
              Text(
                  textAlign: TextAlign.justify,
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                  style: TextStyle(color: Colors.black, fontSize: 20))
            ],
          ),
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
                          borderRadius: BorderRadius.circular(6))),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 7,
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
