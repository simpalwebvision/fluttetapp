import 'package:chitrakala/Franchise/siow_franchise.dart';
import 'package:flutter/material.dart';

class USEFRANCHISE extends StatefulWidget {
  const USEFRANCHISE({super.key});

  @override
  State<USEFRANCHISE> createState() => _USEFRANCHISEState();
}

class _USEFRANCHISEState extends State<USEFRANCHISE> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Stack(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(top: 40),
                  child: Center(
                    child: Text('Reset Password',
                        style: TextStyle(
                            fontSize: 25.0, fontWeight: FontWeight.bold)),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 35.0, left: 20.0, right: 20.0),
            child: Column(
              children: <Widget>[
                Text(
                  'Enter the email address associated with your account.',
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                TextField(
                  decoration: InputDecoration(
                      labelText: 'EMAIL',
                      labelStyle: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.grey),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.red))),
                ),
                SizedBox(height: 40.0),
                Container(
                  height: 40.0,
                  child: MaterialButton(
                    onPressed: () {},
                    color: Color.fromARGB(255, 240, 2, 54),
                    elevation: 7.0,
                    child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SIOWFRANCHISE()));
                        },
                        child: Center(
                            child: Text(
                          'RESET PASSWORD',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ))),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 15.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // InkWell(
              //   onTap: () {
              //        Navigator.push(
              //         context,
              //         new MaterialPageRoute(
              //           builder: (BuildContext context) =>
              //               new ResetPasswordMobilePage(title: 'Reset Password : Mobile'),
              //         ));
              //   },
              //   child: Text('Try another way ?',
              //       style: TextStyle(
              //           color: Colors.blue,
              //           fontWeight: FontWeight.bold,
              //           decoration: TextDecoration.underline)),
              // )
            ],
          )
        ],
      ),
    );
  }
}