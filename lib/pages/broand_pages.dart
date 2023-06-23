import 'package:chitrakala/Franchise/Login%20Page/SignIn.dart';
import 'package:chitrakala/Partner/partnerlogin.dart';
import 'package:chitrakala/art/artist_art.dart';
import 'package:chitrakala/art/home_art.dart';
import 'package:chitrakala/art/leading_art.dart';
import 'package:chitrakala/art/prodictlist_art.dart';
import 'package:chitrakala/constats/color.dart';
import 'package:chitrakala/controller/auth_controller.dart';
import 'package:chitrakala/pages/about_pages.dart';
import 'package:chitrakala/pages/class_pages.dart';
import 'package:chitrakala/pages/main_pages.dart';
import 'package:chitrakala/screens/login_screen.dart';
import 'package:chitrakala/sellwith_widgets.dart';
import 'package:chitrakala/src/Cart_src.dart';
import 'package:chitrakala/src/Wishlist_src.dart';
import 'package:chitrakala/src/home_page.dart';
import 'package:chitrakala/src/root_app.dart';
import 'package:chitrakala/teacher/teacherlogin.dart';
import 'package:chitrakala/view/views/home_view/home_view.dart';
import 'package:flutter/material.dart';

class BroandPages extends StatefulWidget {
  const BroandPages({super.key});

  @override
  State<BroandPages> createState() => _BroandPagesState();
}

class _BroandPagesState extends State<BroandPages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.red),
          backgroundColor: Colors.white,
          title: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Padding(
              padding: const EdgeInsets.only(right: 9),
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
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ProdictistArt()));
              },
              icon: Icon(Icons.favorite),
            ),
            SizedBox(
              height: 20.0,
            ),
            IconButton(onPressed: () {}, icon: (Icon(Icons.shopping_bag))),
            SizedBox(
              height: 20,
            ),
            PopupMenuButton(
                // add icon, by default "3 dot" icon
                // icon: Icon(Icons.book)
                itemBuilder: (context) {
              return [
                PopupMenuItem<int>(
                  value: 0,
                  child: InkWell(
                    child: Text(
                      "My Profile",
                    ),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => RootApp()));
                    },
                  ),
                ),
                PopupMenuItem<int>(
                  value: 1,
                  child: InkWell(
                    child: Text(
                      "Wishlist",
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => WishlistSrc()));
                    },
                  ),
                ),
                PopupMenuItem<int>(
                  value: 2,
                  child: InkWell(
                    child: Text(
                      "Cart",
                    ),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => CardSrc()));
                    },
                  ),
                ),
                PopupMenuItem<int>(
                  value: 2,
                  child: InkWell(
                    child: Text(
                      "Logout",
                    ),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomeArt()));
                    },
                  ),
                )
              ];
            }, onSelected: (value) {
              if (value == 0) {
              } else if (value == 1) {
              } else if (value == 2) {}
            })
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
              title: const Text(' Logout '),
              onTap: () {
                AuthController.logOut();
              },
            ),
          ],
        )),
        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
        body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.only(top: 7),
              child: Center(
                  child: Column(children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    height: MediaQuery.of(context).size.height * .50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: MyColors.primaryColor,
                        borderRadius: BorderRadius.circular(30)),
                    child: Stack(
                      alignment: Alignment.bottomLeft,
                      children: [
                        Image(
                            fit: BoxFit.cover,
                            width: double.infinity,
                            image: NetworkImage(
                                'https://cdn11.bigcommerce.com/s-x49po/images/stencil/1280x1280/products/53478/72201/1596974420870_IMG_20200809_172655__94591.1597493331.jpg?c=2')),
                        Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Container(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    'Collection',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 13),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                      "PaintingGirl in rain\nHandpainted Art Painting",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500,
                                          height: 1,
                                          fontSize: 25)),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  MaterialButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    ClassPages()));
                                      },
                                      child: Text('Shop Now  ->'))
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                Container(
                  margin: EdgeInsets.zero,
                  color: Color.fromARGB(255, 131, 73, 83),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(7.0),
                        child: Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.blue),
                          child: IconButton(
                            color: Colors.blueAccent,
                            icon: Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 22,
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ClassPages()));
                            },
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'OUR COURSES',
                          style: TextStyle(color: Colors.white, fontSize: 17),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.black,
                                width: 2,
                                style: BorderStyle.solid)),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Expanded(
                                    child: MainPages(
                                  mainText: 'Login/Registration',
                                  imagePath: 'assets/images/graduates.png',
                                  onpressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                LoginScreen()));
                                  },
                                )),
                                Expanded(
                                    child: MainPages(
                                  mainText: 'Franchise',
                                  imagePath: 'assets/images/handshakes.png',
                                  onpressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => SignIn()));
                                  },
                                )),
                              ],
                            ),
                            Row(
                              children: [
                                Expanded(
                                    child: MainPages(
                                  mainText: 'Partner',
                                  imagePath: 'assets/images/partners.png',
                                  onpressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                PartnerLogin()));
                                  },
                                )),
                                Expanded(
                                    child: MainPages(
                                        mainText: 'Teacher',
                                        imagePath: 'assets/images/teacher.png',
                                        onpressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      TeacherLogin()));
                                        })),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Expanded(
                                    child: MainPages(
                                  mainText: 'Art competition',
                                  imagePath: 'assets/images/colors.png',
                                  onpressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                LeadingArt()));
                                  },
                                )),
                                Expanded(
                                    child: MainPages(
                                  mainText: 'ASK ANYTHING',
                                  imagePath: 'assets/images/fitness-balls.png',
                                  onpressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => HomeView()));
                                  },
                                )),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ]))),
        ));
  }
}
