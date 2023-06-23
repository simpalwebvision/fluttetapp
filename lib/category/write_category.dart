import 'package:flutter/material.dart';

class WriteCategory extends StatefulWidget {
  const WriteCategory({super.key});

  @override
  State<WriteCategory> createState() => _WriteCategoryState();
}

class _WriteCategoryState extends State<WriteCategory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WRITE A REVIEW'),
      ),
    );
  }
}
