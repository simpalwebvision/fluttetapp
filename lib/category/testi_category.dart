
import 'package:flutter/material.dart';

class TestiCategory extends StatefulWidget {
  const TestiCategory({super.key});

  @override
  State<TestiCategory> createState() => _TestiCategoryState();
}

class _TestiCategoryState extends State<TestiCategory> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('TESTIMONIAL'),
      ),

    );
  }
}