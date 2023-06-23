import 'package:flutter/material.dart';

class ThreenCouses extends StatefulWidget {
  const ThreenCouses({Key? key}) : super(key: key);

  @override
  State<ThreenCouses> createState() => _ThreenCousesState();
}

class _ThreenCousesState extends State<ThreenCouses> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 25, 225, 240),
        title: Text('All Exams',style: TextStyle(color: Color.fromARGB(255, 17, 16, 16),fontWeight: FontWeight.bold,fontSize: 20))
        ),
        backgroundColor: Color.fromARGB(255, 52, 236, 196),
        body: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 300),
                child: Center(child: Text('No Exams',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25))),
              )
            ],
          ),
        ),
    );
  }
}