import 'package:flutter/material.dart';

class PassbookModle extends StatefulWidget {
  const PassbookModle({super.key});

  @override
  State<PassbookModle> createState() => _PassbookModleState();
}

class _PassbookModleState extends State<PassbookModle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 40, 5, 236),
        title: Text('Password'),
      ),
    );
  }
}
