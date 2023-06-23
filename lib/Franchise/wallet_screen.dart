import 'package:chitrakala/controller/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class WalletScreen extends StatefulWidget {
  const WalletScreen({super.key});

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 36, 1, 235),
          title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text('Wallet...')]),
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
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 4, 38, 230),
                ), //BoxDecoration
                child: SizedBox(
                  child: Padding(
                    padding: EdgeInsets.only(left: 70),
                    child: UserAccountsDrawerHeader(
                      decoration:
                          BoxDecoration(color: Color.fromARGB(255, 0, 43, 231)),
                      accountName: Text(
                        "Hello Binod",
                        style: TextStyle(fontSize: 18),
                      ),
                      accountEmail: Text(
                        "13677184",
                        style: TextStyle(fontSize: 20),
                      ),
                      currentAccountPictureSize: Size.square(50),
                      currentAccountPicture: CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 248, 246, 246),
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Center(child: Icon(Icons.home)),
                        ), //Text
                      ), //circleAvatar
                    ),
                  ),
                ), //UserAccountDrawerHeader
              ), //DrawerHeader

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
        body: GridView.count(
          primary: false,
          crossAxisCount: 3,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          padding: const EdgeInsets.all(20),
          children: <Widget>[
            InkWell(
              onTap: () async {
                await showDialog(
                  context: context,
                  builder: (context) => new AlertDialog(
                    title: new Text('Current Tier'),
                    content: Text('Account is not updated yet....'),
                    actions: <Widget>[
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context, rootNavigator: true)
                              .pop(); // dismisses only the dialog and returns nothing
                        },
                        child: new Text('OK'),
                      ),
                    ],
                  ),
                );
              },
              child: Container(
                padding: const EdgeInsets.all(8),
                child: const Text("Current Tier"),
                color: Colors.orange[200],
              ),
            ),
            InkWell(
              onTap: () async {
                await showDialog(
                  context: context,
                  builder: (context) => new AlertDialog(
                    title: new Text('Current Tier'),
                    content: Text('Account is not updated yet....'),
                    actions: <Widget>[
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context, rootNavigator: true)
                              .pop(); // dismisses only the dialog and returns nothing
                        },
                        child: new Text('OK'),
                      ),
                    ],
                  ),
                );
              },
              child: InkWell(
                onTap: (() async {
                  await showDialog(
                    context: context,
                    builder: (context) => new AlertDialog(
                      title: new Text('Current Tier'),
                      content: Text('Account is not updated yet....'),
                      actions: <Widget>[
                        ElevatedButton(
                          onPressed: () {
                            Navigator.of(context, rootNavigator: true)
                                .pop(); // dismisses only the dialog and returns nothing
                          },
                          child: new Text('OK'),
                        ),
                      ],
                    ),
                  );
                }),
                child: Container(
                  padding: const EdgeInsets.all(8),
                  child: const Text("Indirect Income"),
                  color: Colors.green[200],
                ),
              ),
            ),
            InkWell(
              onTap: () async {
                await showDialog(
                  context: context,
                  builder: (context) => new AlertDialog(
                    title: new Text('Current Tier'),
                    content: Text('Account is not updated yet....'),
                    actions: <Widget>[
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context, rootNavigator: true)
                              .pop(); // dismisses only the dialog and returns nothing
                        },
                        child: new Text('OK'),
                      ),
                    ],
                  ),
                );
              },
              child: Container(
                padding: const EdgeInsets.all(8),
                child: const Text("Level Income"),
                color: Colors.red[200],
              ),
            ),
            InkWell(
              onTap: (() async {
                await showDialog(
                  context: context,
                  builder: (context) => new AlertDialog(
                    title: new Text('Current Tier'),
                    content: Text('Account is not updated yet....'),
                    actions: <Widget>[
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context, rootNavigator: true)
                              .pop(); // dismisses only the dialog and returns nothing
                        },
                        child: new Text('OK'),
                      ),
                    ],
                  ),
                );
              }),
              child: Container(
                padding: const EdgeInsets.all(8),
                child: const Text("Fast Income"),
                color: Colors.purple[200],
              ),
            ),
            InkWell(
              onTap: () async {
                await showDialog(
                  context: context,
                  builder: (context) => new AlertDialog(
                    title: new Text('Current Tier'),
                    content: Text('Account is not updated yet....'),
                    actions: <Widget>[
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context, rootNavigator: true)
                              .pop(); // dismisses only the dialog and returns nothing
                        },
                        child: new Text('OK'),
                      ),
                    ],
                  ),
                );
              },
              child: Container(
                padding: const EdgeInsets.all(8),
                child: const Text("Pool Income"),
                color: Colors.blueGrey[200],
              ),
            ),
            InkWell(
              onTap: () async {
                await showDialog(
                  context: context,
                  builder: (context) => new AlertDialog(
                    title: new Text('Current Tier'),
                    content: Text('Account is not updated yet....'),
                    actions: <Widget>[
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context, rootNavigator: true)
                              .pop(); // dismisses only the dialog and returns nothing
                        },
                        child: new Text('OK'),
                      ),
                    ],
                  ),
                );
              },
              child: Container(
                padding: const EdgeInsets.all(8),
                child: const Text("Sale Bonus"),
                color: Colors.yellow[200],
              ),
            ),
            InkWell(
              onTap: (() async {
                await showDialog(
                  context: context,
                  builder: (context) => new AlertDialog(
                    title: new Text('Current Tier'),
                    content: Text('Account is not updated yet....'),
                    actions: <Widget>[
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context, rootNavigator: true)
                              .pop(); // dismisses only the dialog and returns nothing
                        },
                        child: new Text('OK'),
                      ),
                    ],
                  ),
                );
              }),
              child: Container(
                padding: const EdgeInsets.all(8),
                child: const Text("Direct Income"),
                color: Colors.yellow[200],
              ),
            ),
            InkWell(
              onTap: () async {
                await showDialog(
                  context: context,
                  builder: (context) => new AlertDialog(
                    title: new Text('Current Tier'),
                    content: Text('Account is not updated yet....'),
                    actions: <Widget>[
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context, rootNavigator: true)
                              .pop(); // dismisses only the dialog and returns nothing
                        },
                        child: new Text('OK'),
                      ),
                    ],
                  ),
                );
              },
              child: Container(
                padding: const EdgeInsets.all(8),
                child: const Text("Self Turnover"),
                color: Colors.yellow[200],
              ),
            ),
          ],
        ));
  }
}
