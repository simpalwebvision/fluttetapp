import 'package:flutter/material.dart';


class UserModle extends StatefulWidget {
  const UserModle({super.key});

  @override
  State<UserModle> createState() => _UserModleState();
}

class _UserModleState extends State<UserModle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 7, 44, 255),
        title: Text('Direct Team'),
      ),
    );
  }
}