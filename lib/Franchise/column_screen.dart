import 'package:flutter/material.dart';

class ColumnScreen extends StatelessWidget {
  final String? mainText;
  final String? imagePath;
  final String? icon;
  final VoidCallback? onpressed;

  const ColumnScreen(
      {Key? key, this.mainText, this.imagePath, this.icon, this.onpressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onpressed,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Card(
          color: Colors.white,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                imagePath!,
                scale: 2,
              ),
              Text(
                mainText!,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
