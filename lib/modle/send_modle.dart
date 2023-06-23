import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SendModle extends StatefulWidget {
  const SendModle({super.key});

  @override
  State<SendModle> createState() => _SendModleState();
}

class _SendModleState extends State<SendModle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 3, 73, 224),
        title: Text('Send Money'),
      ),
      body:
       SingleChildScrollView(
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                children: [
                 
                 
                  TextFormField(
                    maxLength: 15,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10),),
                      ),
                      hintText: 'Weblord A/c number',
                      labelText: 'Account Numbar',
                      prefixIcon: Icon(Icons.person)
                    ),

                  ),
                  TextFormField(
                    maxLength: 10,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10),),
                      ),
                      hintText: 'user name',
                      labelText: 'User Name',
                      prefixIcon: Icon(Icons.person)
                    ),

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
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(onPressed: (){}, child: Text('Send Money',style: TextStyle(color: Colors.amber,fontSize: 15),))
                   
                ]
      
    )
            )
          )
       )
    );
    
  }
}