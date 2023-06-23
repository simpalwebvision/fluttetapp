import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:chitrakala/category/contacts_category.dart';
import 'package:chitrakala/category/free_category.dart';
import 'package:chitrakala/category/study_category.dart';
import 'package:chitrakala/category/testi_category.dart';
import 'package:chitrakala/controller/auth_controller.dart';
import 'package:chitrakala/courses/first_courese.dart';
import 'package:chitrakala/courses/five_courses.dart';
import 'package:chitrakala/courses/foure_courses.dart';
import 'package:chitrakala/courses/six_courses.dart';
import 'package:chitrakala/courses/threen_courses.dart';
import 'package:chitrakala/courses/two_courses.dart';
import 'package:chitrakala/view/ColumnHelper.view.dart';
import 'package:chitrakala/widgets/column_helper.dart';
import 'package:flutter/material.dart';

class HomePages extends StatefulWidget {
  const HomePages({super.key});

  @override
  State<HomePages> createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> {
  List imageList = [
    {"id": 2, "image_path": 'assets/images/2.jpeg'},
    {"id": 1, "image_path": 'assets/images/1.jpeg'},
    {"id": 2, "image_path": 'assets/images/6.jpeg'},
    {"id": 2, "image_path": 'assets/images/4.jpeg'},
    {"id": 1, "image_path": 'assets/images/5.jpeg'},
    {"id": 2, "image_path": 'assets/images/3.jpeg'},
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
        drawer: Drawer(
          child: ListView(
            padding: const EdgeInsets.all(0),
            children: [
              DrawerHeader(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: <Color>[
                    Color.fromARGB(255, 155, 57, 235),
                    Colors.black
                  ])),
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Material(
                            borderRadius:
                                BorderRadius.all(Radius.circular(50.0)),
                            elevation: 10,
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Icon(Icons.home),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
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
                leading: const Icon(Icons.home),
                title: const Text(' dashboard '),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.computer),
                title: const Text(' My Courses'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ContactCategory()));
                },
              ),
              ListTile(
                leading: const Icon(Icons.class_outlined),
                title: const Text('My Free Classes '),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ContactCategory()));
                },
              ),
              ListTile(
                leading: const Icon(Icons.my_library_books),
                title: const Text('My Collections '),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.create_new_folder_outlined),
                title: const Text('Certificates'),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.book_online_outlined),
                title: const Text('Exams'),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.logout),
                title: const Text(' Logout '),
                onTap: () {
                  AuthController.logOut();
                },
              ),
            ],
          ),
        ),
        backgroundColor: Color.fromARGB(255, 179, 60, 51),
        body: SingleChildScrollView(
          child: Column(children: [
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
                  Row(
                    children: [
                      Expanded(
                          child: ColumnHelper(
                        mainText: 'My Courses',
                        imagePath: 'assets/images/adfg.jpg',
                        onpressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => FirstCourese()));
                        },
                      )),
                      Expanded(
                          child: ColumnHelper(
                        mainText: 'My Free Classes',
                        imagePath: 'assets/images/frree.jpg',
                        onpressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => FiveCourses()));
                        },
                      )),
                      Expanded(
                          child: ColumnHelper(
                        mainText: 'My Collections',
                        imagePath: 'assets/images/asdfgh.png',
                        onpressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => FoureCourses()));
                        },
                      )),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: ColumnHelper(
                        mainText: 'Certificates',
                        imagePath: 'assets/images/WhatsApp Image.jpeg',
                        onpressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SixCouses()));
                        },
                      )),
                      Expanded(
                          child: ColumnHelper(
                        mainText: 'Exams',
                        imagePath: 'assets/images/eam.png',
                        onpressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ThreenCouses()));
                        },
                      )),
                      Expanded(
                          child: ColumnHelper(
                        mainText: 'Messages',
                        imagePath: 'assets/images/mssd.png',
                        onpressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => TwoCourses()));
                        },
                      )),
                    ],
                  )
                ],
              ),
            ),
            Container(
              color: Colors.white,
              width: 500,
              child: Column(
                children: [
                  Center(
                    child: Text(
                      'Category',
                      style: TextStyle(
                          color: Color.fromARGB(255, 26, 25, 25),
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Color.fromARGB(255, 238, 43, 43),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                          child: ColumnHelperView(
                        mainText: 'FREE LECTURES',
                        imagePath: 'assets/images/FREE.jpg',
                        onpressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => FreeCategory()));
                        },
                      )),
                      Expanded(
                          child: ColumnHelperView(
                        mainText: 'STUDY MATERIAL',
                        imagePath: 'assets/images/study-material.png',
                        onpressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => StudyCategory()));
                        },
                      )),
                      Expanded(
                          child: ColumnHelperView(
                        mainText: 'TESTIMONIAL',
                        imagePath: 'assets/images/transparent.png',
                        onpressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => TestiCategory()));
                        },
                      )),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            MaterialButton(
                color: Color.fromARGB(255, 243, 240, 237),
                onPressed: () {},
                child: Text(
                  'Let get in Touch ',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 23,
                      color: Colors.teal),
                )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'were open to any suggestions or just have a chat',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFormField(
                    maxLines: 6,
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(
                  color: Colors.white,
                  onPressed: () {},
                  child: Text(
                    'Send',
                  )),
            ),
            Column(
              children: <Widget>[
                ListTile(
                  leading: const Icon(Icons.language, color: Colors.white),
                  title: const Text(
                    ' http://balchitrakala.com/ ',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.white),
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
                  leading: const Icon(Icons.email, color: Colors.white),
                  title: const Text(
                    ' Support@balchitrkal.in ',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.white),
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
                  leading: const Icon(Icons.phone_android, color: Colors.white),
                  title: const Text(
                    ' (+91) 8422-014-356 ',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.white),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.map_sharp, color: Colors.white),
                  title: const Text(
                    'B-Wing,G-5,Sargam Apartment Ramdas Near Aditya Hotel,Vasai(East),Palghar -401208. ',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                        color: Colors.white),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ]),
        ));
  }
}
