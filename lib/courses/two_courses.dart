

import 'package:flutter/material.dart';

class TwoCourses extends StatefulWidget {
  const TwoCourses({super.key});

  @override
  State<TwoCourses> createState() => _TwoCoursesState();
}

class _TwoCoursesState extends State<TwoCourses> {
  TextEditingController nameController = TextEditingController();
   List dropDownListData = [
    {"title": "BCA", "value": "1"},
    {"title": "MCA", "value": "2"},
    {"title": "B.Tech", "value": "3"},
    {"title": "M.Tech", "value": "4"},
  ];

  String selectedCourseValue = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 16, 243, 232),
            title: Text('Massages',style: TextStyle(color: Color.fromARGB(255, 238, 241, 241),
            fontWeight: FontWeight.bold,fontSize: 20)),
          ),
          backgroundColor: Color.fromARGB(255, 63, 245, 245),
          body: DefaultTabController(
        length: 3,
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
                  Tab(text: "COMPOSE",
                  ),
                  

                  Tab(text: "INBOX"),
                  Tab(text: "SEND"),
                  
                ]),
                
              ),
             Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: '',
                ),
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
                                hintText: 'Enter a Massgese Here',hintStyle: TextStyle(color: Color.fromARGB(255, 235, 40, 40),
                                ),
                                fillColor: Colors.blue,
                                border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)
                                
                                )
                                
                              ),
                            ),
                           
                          
                             
                           

                          ],
                        ),
                        
                      ),
                      Row(
                        children:<Widget> [
                           ElevatedButton(onPressed: (){},
                           
                             child: Text('Send',style: TextStyle(color: Color.fromARGB(255, 24, 20, 20),fontWeight: FontWeight.bold,fontSize: 15))),
                             Padding(
                               padding: const EdgeInsets.all(25.0),
                               child: ElevatedButton(onPressed: (){},
                               child: Text('Cencel',style: TextStyle(color: Color.fromARGB(255, 24, 20, 20),fontWeight: FontWeight.bold,fontSize: 15))),
                             ),

                        ],
                      )
                       
                             
              
             
              
              ]
              ),

              

              
              )
              
              )
              
              );
    
  }
}
  