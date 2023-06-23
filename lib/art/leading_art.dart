import 'package:chitrakala/art/about_art.dart';
import 'package:chitrakala/art/art%20n%20artist.dart';
import 'package:chitrakala/art/home_art.dart';
import 'package:flutter/material.dart';

class LeadingArt extends StatefulWidget {
  LeadingArt({Key? key}) : super(key: key);

  @override
  _LeadingArtState createState() => _LeadingArtState();
}

class _LeadingArtState extends State<LeadingArt> with TickerProviderStateMixin {
  late TabController tabController;
  int selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  List<Widget> myChilders = const [
    HomeArt(),
    AboutArt(),
    ArtNArtist(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: TabBarView(
            physics: const NeverScrollableScrollPhysics(),
            controller: tabController,
            children: myChilders),
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
                unselectedLabelColor: Colors.grey,
                controller: tabController,
                tabs: [
                  Tab(
                    iconMargin: EdgeInsets.only(bottom: 4),
                    icon: selectedIndex == 0
                        ? const Icon(Icons.home)
                        : const Icon(Icons.home_mini),
                    child: const Text(
                      'Home',
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                  const Tab(
                    iconMargin: EdgeInsets.only(bottom: 4),
                    icon: Icon(Icons.contact_emergency),
                    child: Text(
                      'Contact',
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                  const Tab(
                    iconMargin: EdgeInsets.only(bottom: 4),
                    icon: Icon(Icons.info),
                    child: Text(
                      'About',
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ]),
          ),
        ));
  }
}
