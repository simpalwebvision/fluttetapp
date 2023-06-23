import 'package:flutter/material.dart';

class CompetitionArt extends StatefulWidget {
  const CompetitionArt({super.key});

  @override
  State<CompetitionArt> createState() => _CompetitionArtState();
}

class _CompetitionArtState extends State<CompetitionArt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('flutter'),
      ),
      body: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                  width: 310,
                  alignment: Alignment.center,
                  child: Image.asset(
                    'assets/images/draw2.jpg',
                  )),
              Column(
                children: [
                  Container(
                      width: 230,
                      child: Image.asset(
                        'assets/images/paint2.jpg',
                        scale: 2,
                      )),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                      width: 230,
                      child: Image.asset(
                        'assets/images/traning.jpg',
                        scale: 2,
                      )),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
