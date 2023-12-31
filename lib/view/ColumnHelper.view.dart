import 'package:flutter/material.dart';

class ColumnHelperView extends StatelessWidget {
  final String? mainText;
  final String? imagePath;
  final String? icon;
  final VoidCallback? onpressed;

  const ColumnHelperView(
      {Key? key, this.mainText, this.imagePath, this.icon, this.onpressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onpressed,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Card(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            
            children: [
              Image.asset(
                imagePath!,
                scale: 5,
              ),
              Text(
                mainText!,
                style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
              ),
             
            ],
          ),
        ),
      ),
    );
  }
}
