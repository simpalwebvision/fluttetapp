import 'package:flutter/material.dart';

class ColumnPartner extends StatelessWidget {
  final String? mainText;
  final String? imagePath;
  final VoidCallback? onpressed;
  const ColumnPartner({Key? key, this.mainText, this.imagePath, this.onpressed})
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
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                imagePath!,
                scale: 4,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12, bottom: 5),
                child: Text(
                  mainText!,
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
