import 'package:flutter/material.dart';

class SixCouses extends StatefulWidget {
  const SixCouses({Key? key}) : super(key: key);

  @override
  State<SixCouses> createState() => _SixCousesState();
}

class _SixCousesState extends State<SixCouses> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 85, 226, 245),
        title: Text('Certificates'),
      ),
      backgroundColor: Color.fromARGB(255, 21, 247, 228),
     body:Center(

      child: Column(
        children: [
          Center(child: Padding(
            padding: const EdgeInsets.only(top: 300),
            child: Text('NO CERTIFICATE AVAILABLE',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),),
          )),
          Center(child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Text('ENROLL FOR A COURSE',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20)),
          ))
        ],
      ),
     )
    );
  }
}