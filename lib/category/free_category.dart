import 'package:flutter/material.dart';

class FreeCategory extends StatefulWidget {
  const FreeCategory({super.key});

  @override
  State<FreeCategory> createState() => _FreeCategoryState();
}

class _FreeCategoryState extends State<FreeCategory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 84, 253, 225),
          title: Text(
            'FREE LECTURES',
            style: TextStyle(
                color: Color.fromARGB(255, 15, 15, 15),
                fontWeight: FontWeight.bold,
                fontSize: 20),
          )),
      backgroundColor: Color.fromARGB(255, 41, 228, 253),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(width: 10, color: Colors.blue),
            color: Colors.amber.shade200,
            shape: BoxShape.circle,
          ),
          child: IconButton(
            iconSize: 150,
            icon: const Icon(
              Icons.play_arrow,
              color: Colors.pink,
            ),
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
