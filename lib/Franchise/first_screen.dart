import 'package:chitrakala/Franchise/column_screen.dart';
import 'package:chitrakala/Franchise/franchiselogin.dart';
import 'package:chitrakala/controller/auth_controller.dart';
import 'package:chitrakala/modle/add_modle.dart';
import 'package:chitrakala/modle/passbool_modle.dart';
import 'package:chitrakala/modle/prize_modle.dart';
import 'package:chitrakala/modle/send_modle.dart';
import 'package:chitrakala/modle/user_modle.dart';
import 'package:chitrakala/modle/with_modle.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Color.fromARGB(255, 245, 3, 64)),
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
                    MaterialPageRoute(builder: (context) => FranchiseLogin()));
              },
              icon: (Icon(Icons.people_alt))),
          SizedBox(
            height: 20,
          ),
        ],
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: <Color>[Colors.lightBlue, Colors.black])),
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
                        child: Text('Hello Binod'),
                      ),
                      Text('13677184')
                    ],
                  ),
                )),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text(' Home '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.memory_sharp),
              title: const Text(' Members'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.account_balance_wallet),
              title: const Text(' Passbook'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.refresh),
              title: const Text(' Refer'),
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
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            child: Stack(children: [
              Container(
                  height: 310,
                  child: Image.asset(
                    'assets/images/onlieo.jpeg',
                    fit: BoxFit.fill,
                  ))
            ]),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                          child: ColumnScreen(
                        mainText: 'Passbook',
                        imagePath: 'assets/images/apple.png',
                        onpressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PassbookModle()));
                        },
                      )),
                      Expanded(
                          child: ColumnScreen(
                        mainText: 'Send Money',
                        imagePath: 'assets/images/letter.png',
                        onpressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SendModle()));
                        },
                      )),
                      Expanded(
                          child: ColumnScreen(
                        mainText: 'Withdrawl',
                        imagePath: 'assets/images/atm.png',
                        onpressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => WithModle()));
                        },
                      )),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: ColumnScreen(
                        mainText: 'Add Monev',
                        imagePath: 'assets/images/growth.png',
                        onpressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AddModle()));
                        },
                      )),
                      Expanded(
                          child: ColumnScreen(
                        mainText: 'Prize Pool',
                        imagePath: 'assets/images/reward.png',
                        onpressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PrizeModle()));
                        },
                      )),
                      Expanded(
                          child: ColumnScreen(
                        mainText: 'Users',
                        imagePath: 'assets/images/energy.png',
                        onpressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => UserModle()));
                        },
                      )),
                    ],
                  )
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
