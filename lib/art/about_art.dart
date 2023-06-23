import 'package:flutter/material.dart';

class AboutArt extends StatefulWidget {
  const AboutArt({super.key});

  @override
  State<AboutArt> createState() => _AboutArtState();
}

class _AboutArtState extends State<AboutArt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffeeeeeee),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 70),
            child: Column(
              children: <Widget>[
                Text(
                  'Contact',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
                SizedBox(
                  height: 5,
                ),
                Text('Keep In Touch with Us',
                    style: TextStyle(fontWeight: FontWeight.w100)),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Column(
                    children: <Widget>[
                      TextField(
                        decoration: InputDecoration(
                            filled: true,
                            hintText: "First Name",
                            fillColor: Colors.white,
                            border: InputBorder.none),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            filled: true,
                            hintText: " Last Name",
                            fillColor: Colors.white,
                            border: InputBorder.none),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            filled: true,
                            hintText: "Email Id",
                            fillColor: Colors.white,
                            border: InputBorder.none),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            filled: true,
                            hintText: "Password",
                            fillColor: Colors.white,
                            border: InputBorder.none),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      TextField(
                        maxLines: 5,
                        decoration: InputDecoration(
                            filled: true,
                            hintText: "Massage",
                            fillColor: Colors.white,
                            border: InputBorder.none),
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      MaterialButton(
                        color: Color(0xff333333),
                        onPressed: () {},
                        child: Text(
                          'SUBMIT',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
