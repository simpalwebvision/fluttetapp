import 'package:flutter/material.dart';


class WithModle extends StatefulWidget {
  const WithModle({super.key});

  @override
  State<WithModle> createState() => _WithModleState();
}

class _WithModleState extends State<WithModle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 76, 3, 247),
        title: Text('Withdraw'),
      ),
      body: Container(
        child: Column(

          children: [
             Text('Your Balance',style: TextStyle(fontSize: 30,color: Colors.black),),
             SizedBox(
              height: 20,
             ),
             TextFormField(
                    maxLength: 15,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10),),
                      ),
                      hintText: 'amount',
                      labelText: 'Amount',
                      prefixIcon: Icon(Icons.person)
                    ),

                  ),
                  ElevatedButton(onPressed: (){}, child: Text('Withdraw',style: TextStyle(fontSize: 20,color: Color.fromARGB(255, 48, 255, 7)),))

          ],
        ),
      ),


    );
  }
}