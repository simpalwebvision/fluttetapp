import 'package:chitrakala/controller/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AddScreen extends StatefulWidget {
  const AddScreen({super.key});

  @override
  State<AddScreen> createState() => _AddScreenState();
}

class _AddScreenState extends State<AddScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 36, 1, 235),
          title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text('Add Member')]),
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
        body: SingleChildScrollView(
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                children: [
                  Text(
                    'Registration Form',
                    style: TextStyle(fontSize: 30, color: Colors.black),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    maxLength: 6,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        hintText: 'Your Sponser',
                        labelText: 'SPNR0001',
                        prefixIcon: Icon(Icons.person)),
                  ),
                  TextFormField(
                    maxLength: 6,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        hintText: 'First Name',
                        labelText: 'FirstName',
                        prefixIcon: Icon(Icons.person)),
                  ),
                  TextFormField(
                    maxLength: 6,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        hintText: 'Last Name',
                        labelText: 'Last Name',
                        prefixIcon: Icon(Icons.person)),
                  ),
                  TextFormField(
                    maxLength: 32,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        hintText: 'Email',
                        labelText: 'Email',
                        prefixIcon: Icon(Icons.email)),
                  ),
                  TextFormField(
                    maxLength: 10,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        hintText: 'Mobile No',
                        labelText: 'Mobile No',
                        prefixIcon: Icon(Icons.person)),
                  ),
                  TextFormField(
                    maxLength: 10,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        hintText: 'Password',
                        labelText: 'Password',
                        prefixIcon: Icon(Icons.person)),
                  ),
                  TextFormField(
                    maxLength: 8,
                    obscureText: true,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        hintText: ' Confirm Password',
                        labelText: 'Confirm Password',
                        prefixIcon: Icon(Icons.password)),
                  ),
                  MaterialButton(
                      onPressed: () {},
                      color: Color.fromARGB(255, 40, 5, 236),
                      child: Text(
                        'Regiser',
                        style: TextStyle(fontSize: 25, color: Colors.white),
                      ))
                ],
              ),
            ),
          ),
        ));
  }
}

class Flutter extends StatefulWidget {
  const Flutter({super.key});

  @override
  State<Flutter> createState() => _FlutterState();
}

class _FlutterState extends State<Flutter> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
