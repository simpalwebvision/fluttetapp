import 'package:chitrakala/teacher/dome_teacher.dart';
import 'package:flutter/material.dart';

class ResetTeacher extends StatefulWidget {
  const ResetTeacher({super.key});

  @override
  State<ResetTeacher> createState() => _ResetTeacherState();
}

class _ResetTeacherState extends State<ResetTeacher> {
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
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                TextField(
                  decoration: InputDecoration(
                      labelText: 'EMAIL',
                      labelStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 117, 117, 117)),
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
                                  builder: (context) => DomeTeacher()));
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
        ],
      ),
    );
  }
}
