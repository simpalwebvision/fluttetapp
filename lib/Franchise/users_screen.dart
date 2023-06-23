

import 'package:flutter/material.dart';

class USERSSCREEN extends StatefulWidget {
  const USERSSCREEN({super.key});

  @override
  State<USERSSCREEN> createState() => _USERSSCREENState();
}

class _USERSSCREENState extends State<USERSSCREEN> {
  @override
  Widget build(BuildContext context) {
  
    return 
     DefaultTabController( 
      initialIndex: 1,  //optional, starts from 0, select the tab by default
      length:3,
      child:Scaffold(
          appBar: AppBar(
            title: Text("FREE CLASSES"),
            backgroundColor: Color.fromARGB(255, 243, 245, 245),
            bottom: TabBar(
              labelColor: Colors.black,
                  indicator: BoxDecoration(
                      color: Color.fromARGB(255, 24, 9, 235),
                      borderRadius:  BorderRadius.circular(30.0)
                    ) ,
                      tabs: [
                          Tab(text: "Active Users",),
                          Tab(text: "Unactive Users",),
                          Tab(text: "Level Tree",)
                      ]
                    ),
          ),
          backgroundColor: Color.fromARGB(255, 18, 255, 243),
          body: TabBarView(
              children: [
                  Container( //for first tab
                     child: Center(child: Text('No Live Free Lectures Available',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),)),
                  ),
                  Container( //for second tab
                     child: Center(child: Text('No Live Free Lectures Available',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),)),
                  ),
                  Container( //for third tab
                     child: Center(child: Text('No Live Free Lectures Available',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),)),
                  )
              ]
          )
       )
    );
  }
}
 