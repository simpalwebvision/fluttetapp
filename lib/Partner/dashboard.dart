import 'package:chitrakala/Partner/Columnpartner.dart';
import 'package:chitrakala/controller/auth_controller.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.blue),
        backgroundColor: Colors.white,
        title: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
            padding: const EdgeInsets.only(right: 60),
            child: Center(
              child: Center(
                child: Image.asset(
                  'assets/images/balchitrakala -2.png',
                  scale: 30,
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
                          borderRadius: BorderRadius.all(Radius.circular(50.0)),
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
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.class_outlined),
              title: const Text('My Free Classes '),
              onTap: () {},
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
      body: Card(
        child: Container(
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                      child: ColumnPartner(
                    mainText: 'Upload Image',
                    imagePath: 'assets/images/up-loading.png',
                    onpressed: () {},
                  )),
                  Expanded(
                      child: ColumnPartner(
                    mainText: 'Total',
                    imagePath: 'assets/images/money.png',
                    onpressed: () {},
                  )),
                ],
              ),
              Row(
                children: [
                  Expanded(
                      child: ColumnPartner(
                    mainText: 'Inquiry',
                    imagePath: 'assets/images/support.png',
                    onpressed: () {},
                  )),
                  Expanded(
                      child: ColumnPartner(
                    mainText: 'Update',
                    imagePath: 'assets/images/circular-arrow.png',
                    onpressed: () {},
                  )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
