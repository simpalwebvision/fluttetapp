import 'package:flutter/material.dart';


class FirstCourese extends StatefulWidget{
  @override
  _FirstCoureseState createState() => _FirstCoureseState();
}

class _FirstCoureseState extends State<FirstCourese> { 

  @override
  Widget build(BuildContext context) { 
    return  DefaultTabController( 
      initialIndex: 1,  //optional, starts from 0, select the tab by default
      length:4,
      child:Scaffold(
          appBar: AppBar(
            title: Text("LIVE"),
              backgroundColor: Color.fromARGB(255, 6, 241, 210),
            bottom: TabBar(
              labelColor: Colors.black,
                  indicator: BoxDecoration(
                      color: Color.fromARGB(255, 24, 9, 235),
                      borderRadius:  BorderRadius.circular(30.0)
                    ) ,
                      tabs: [
                          Tab(text: "LIVE",),
                          Tab(text: "COMING",),
                          Tab(text: "TOTAL",),
                          Tab(text: "COMPLETED",)
                      ]
                    ),
          ),
           backgroundColor: Color.fromARGB(255, 12, 219, 209),
          
          body: TabBarView(
              children: [
                  Container( //for first tab
                       child: Center(child: Text('Select Level Tree',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),)),
                  ),
                  Container( //for second tab
                      child: Center(child: Text('Select Level Tree',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),)),
                  ),
                  Container( //for third tab
                    child: Center(child: Text('Select Level Tree',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),)),
                  ),
                  Container( //for third tab
                     child: Center(child: Text('Select Level Tree',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),)),
                  )
              ]
          )
       )
    );
  }
}
 