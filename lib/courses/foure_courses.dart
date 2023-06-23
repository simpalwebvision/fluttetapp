import 'package:flutter/material.dart';

class FoureCourses extends StatefulWidget {
  const FoureCourses({Key? key}) : super(key: key);

  @override
  State<FoureCourses> createState() => _FoureCoursesState();
}

class _FoureCoursesState extends State<FoureCourses> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 143, 237, 250),
        title: (Text(
        'My Collection',style: TextStyle(color: Colors.white),
        ))),
      
      backgroundColor: Color.fromARGB(255, 3, 234, 241),
      body: DefaultTabController(
        length: 2,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                constraints: BoxConstraints.expand(height: 70),
                child: TabBar(
                  labelColor: Colors.black,
                  indicator: BoxDecoration(
                      color: Color.fromARGB(255, 24, 9, 235),
                      borderRadius:  BorderRadius.circular(30.0)
                    ) ,
                  tabs: [
                  Tab(text: "RECORDED COURSES"),
                  Tab(text: "STUDY MATERAL"),
                  
                ]),
              ),
              Expanded(
                child: Container(
                  child: TabBarView(children: [
                    Container(
                      child: Center(child: Text("No",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),)),
                    ),
                    Container(
                      child: Center(child: Text("No",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),)),
                    ),
                  
                  ]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}