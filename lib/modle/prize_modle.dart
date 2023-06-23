import 'package:flutter/material.dart';

class PrizeModle extends StatefulWidget {
  const PrizeModle({super.key});

  @override
  State<PrizeModle> createState() => _PrizeModleState();
}

class _PrizeModleState extends State<PrizeModle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 73, 7, 255),
        title: Text('PoolPrize'),
      ),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 70),
              child: Center(
                  child: Image.asset(
                'assets/images/reward.png',
                scale: 1,
              )),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(onPressed: () {}, child: Text('Claim now')),
            SizedBox(
              height: 40,
            ),
            Text(
              'NOTE :- Pool Prize has been Calculated by you Current tier and when you claim your pool prize,Your tier will be updated and 40 dollar will be charged..',
              style: TextStyle(color: Colors.red, fontSize: 20),
            )
          ],
        ),
      ),
    );
  }
}
