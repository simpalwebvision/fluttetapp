import 'package:chitrakala/Franchise/add_screen.dart';
import 'package:chitrakala/Franchise/first_screen.dart';
import 'package:chitrakala/Franchise/new_screen.dart';
import 'package:chitrakala/Franchise/users_screen.dart';
import 'package:chitrakala/Franchise/wallet_screen.dart';
import 'package:flutter/material.dart';

class Homescreen23 extends StatefulWidget {
  Homescreen23({Key? key}) : super(key: key);

  @override
  _Homescreen23State createState() => _Homescreen23State();
}

class _Homescreen23State extends State<Homescreen23>
    with TickerProviderStateMixin {
  late TabController tabController;
  int selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 5, vsync: this);
  }

  List<Widget> myChilders = const [
    FirstScreen(),
    USERSSCREEN(),
    AddScreen(),
    NewScreen(),
    WalletScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: TabBarView(
              physics: const NeverScrollableScrollPhysics(),
              controller: tabController,
              children: myChilders),
        ),
        bottomNavigationBar: SizedBox(
          height: kBottomNavigationBarHeight,
          child: BottomAppBar(
            child: TabBar(
                onTap: (index) {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                indicator: const UnderlineTabIndicator(
                    insets: EdgeInsets.only(bottom: kBottomNavigationBarHeight),
                    borderSide: BorderSide(color: Colors.red, width: 2)),
                labelColor: Colors.red,
                unselectedLabelColor: Color.fromARGB(255, 93, 8, 252),
                controller: tabController,
                tabs: [
                  Tab(
                    iconMargin: EdgeInsets.only(bottom: 3),
                    icon: selectedIndex == 0
                        ? const Icon(Icons.home)
                        : const Icon(Icons.home),
                    child: const Text(
                      'Home',
                      style: TextStyle(fontSize: 9),
                    ),
                  ),
                  const Tab(
                    iconMargin: EdgeInsets.only(bottom: 4),
                    icon: Icon(Icons.people),
                    child: Text(
                      'People',
                      style: TextStyle(fontSize: 9),
                    ),
                  ),
                  const Tab(
                    iconMargin: EdgeInsets.only(bottom: 4),
                    icon: Icon(Icons.add),
                    child: Text(
                      'Add',
                      style: TextStyle(fontSize: 9),
                    ),
                  ),
                  const Tab(
                    iconMargin: EdgeInsets.only(bottom: 4),
                    icon: Icon(Icons.compare_arrows),
                    child: Text(
                      'New',
                      style:
                          TextStyle(fontSize: 9, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const Tab(
                    iconMargin: EdgeInsets.only(bottom: 4),
                    icon: Icon(Icons.wallet),
                    child: Text(
                      'Wallet',
                      style:
                          TextStyle(fontSize: 9, fontWeight: FontWeight.bold),
                    ),
                  )
                ]),
          ),
        ));
  }
}
