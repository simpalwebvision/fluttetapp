import 'package:chitrakala/art/prodictlist_art.dart';
import 'package:chitrakala/pages/class_pages.dart';
import 'package:chitrakala/sellwith_widgets.dart';
import 'package:chitrakala/src/detail_page.dart';
import 'package:chitrakala/src/menuopen_src.dart';
import 'package:flutter/material.dart';

import '../art/home_art.dart';
import '../controller/auth_controller.dart';
import '../pages/about_pages.dart';

class HomePage extends StatelessWidget {
  static var screenHeight;
  static var screenWidth;

  Widget buildCoffeeCategory({categoryName, isSelected}) {
    return Column(
      children: [
        Text(
          categoryName,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: isSelected ? Color(0xffd17842) : Color(0xff52555a),
          ),
        ),
        isSelected
            ? Text(
                "⬤",
                style: TextStyle(
                  color: Color(0xffd17842),
                ),
              )
            : Text(""),
      ],
    );
  }

  Widget buildSingleItem({
    images,
    title,
    subTitle,
    price,
    context,
    rating,
  }) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => DetailPage()));
      },
      child: Card(
        child: Container(
          width: screenWidth * 0.3,
          height: screenHeight * 0.2,
          child: Stack(
            children: [
              Column(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(images),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          title,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 11,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          subTitle,
                          style: TextStyle(
                            color: Colors.orange,
                            fontSize: 12,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "\$\t",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xffd17842)),
                                ),
                                Text(
                                  "$price",
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Color(0xffd17842),
                                borderRadius: BorderRadius.circular(7),
                              ),
                              child: Icon(
                                Icons.add,
                                size: 20,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                height: 20.0,
                width: 55.0,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 26, 25, 25),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20.0),
                    bottomLeft: Radius.circular(15.0),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.star,
                      size: 10,
                      color: Color(0xffd17842),
                    ),
                    Icon(
                      Icons.star,
                      size: 10,
                      color: Color(0xffd17842),
                    ),
                    Icon(
                      Icons.star,
                      size: 10,
                      color: Color(0xffd17842),
                    ),
                    Text(
                      "$rating",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
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
              height: 20.0,
            ),
            IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Menuopen()));
                },
                icon: (Icon(Icons.menu_open))),
            SizedBox(
              height: 20,
            ),
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
              onTap: () {},
            ),
            ListTile(
              title: const Text('Artist'),
              onTap: () {},
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
        body: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  children: [
                    buildSingleItem(
                      context: context,
                      images: "assets/images/bird.jpg",
                      title: "Color Pencil Art | Nature art drawing  Painting",
                      subTitle: "Paintings",
                      price: 340.00,
                      rating: 4.5,
                    ),
                    buildSingleItem(
                      context: context,
                      images: "assets/images/bird.jpg",
                      title: "Color Pencil Art | Nature art drawing  Painting",
                      subTitle: "Paintings",
                      price: 340.00,
                      rating: 4.5,
                    ),
                    buildSingleItem(
                      context: context,
                      images: "assets/images/bird.jpg",
                      title: "Color Pencil Art | Nature art drawing  Painting",
                      subTitle: "Paintings",
                      price: 340.00,
                      rating: 4.5,
                    ),
                  ],
                ),
                Row(
                  children: [
                    buildSingleItem(
                      context: context,
                      images: "assets/images/bird.jpg",
                      title: "Color Pencil Art | Nature art drawing  Painting",
                      subTitle: "Paintings",
                      price: 340.00,
                      rating: 4.5,
                    ),
                    buildSingleItem(
                      context: context,
                      images: "assets/images/bird.jpg",
                      title: "Color Pencil Art | Nature art drawing  Painting",
                      subTitle: "Paintings",
                      price: 340.00,
                      rating: 4.5,
                    ),
                    buildSingleItem(
                      context: context,
                      images: "assets/images/bird.jpg",
                      title: "Color Pencil Art | Nature art drawing  Painting",
                      subTitle: "Paintings",
                      price: 340.00,
                      rating: 4.5,
                    ),
                  ],
                ),
                Row(
                  children: [
                    buildSingleItem(
                      context: context,
                      images: "assets/images/bird.jpg",
                      title: "Color Pencil Art | Nature art drawing  Painting",
                      subTitle: "Paintings",
                      price: 340.00,
                      rating: 4.5,
                    ),
                    buildSingleItem(
                      context: context,
                      images: "assets/images/bird.jpg",
                      title: "Color Pencil Art | Nature art drawing  Painting",
                      subTitle: "Paintings",
                      price: 340.00,
                      rating: 4.5,
                    ),
                    buildSingleItem(
                      context: context,
                      images: "assets/images/bird.jpg",
                      title: "Color Pencil Art | Nature art drawing  Painting",
                      subTitle: "Paintings",
                      price: 340.00,
                      rating: 4.5,
                    ),
                  ],
                ),
                Row(
                  children: [
                    buildSingleItem(
                      context: context,
                      images: "assets/images/bird.jpg",
                      title: "Color Pencil Art | Nature art drawing  Painting",
                      subTitle: "Paintings",
                      price: 340.00,
                      rating: 4.5,
                    ),
                    buildSingleItem(
                      context: context,
                      images: "assets/images/bird.jpg",
                      title: "Color Pencil Art | Nature art drawing  Painting",
                      subTitle: "Paintings",
                      price: 340.00,
                      rating: 4.5,
                    ),
                    buildSingleItem(
                      context: context,
                      images: "assets/images/bird.jpg",
                      title: "Color Pencil Art | Nature art drawing  Painting",
                      subTitle: "Paintings",
                      price: 340.00,
                      rating: 4.5,
                    ),
                  ],
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
                      leading:
                          const Icon(Icons.phone_android, color: Colors.black),
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
              ]),
        ));
  }
}
