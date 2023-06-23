import 'package:flutter/material.dart';

class AddModle extends StatefulWidget {
  const AddModle({super.key});

  @override
  State<AddModle> createState() => _AddModleState();
}

class _AddModleState extends State<AddModle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Money'),
      ),
      body: Container(
        child: Column(
          children: [
            Text(
              'Your Balance',
              style: TextStyle(fontSize: 30, color: Colors.black),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              maxLength: 15,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  hintText: 'amount',
                  labelText: 'Amount',
                  prefixIcon: Icon(Icons.person)),
            ),
            ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Withdraw',
                  style: TextStyle(
                      fontSize: 20, color: Color.fromARGB(255, 48, 255, 7)),
                ))
          ],
        ),
      ),
    );
  }
}
