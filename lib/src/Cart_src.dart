import 'package:flutter/material.dart';

class CardSrc extends StatefulWidget {
  const CardSrc({super.key});

  @override
  State<CardSrc> createState() => _CardSrcState();
}

class _CardSrcState extends State<CardSrc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: <Widget>[
      Card(
        color: Colors.white,
        child: DataTable(
          columns: [
            DataColumn(
                label: Text('404 Page Not Found',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
          ],
          rows: [
            DataRow(cells: [
              DataCell(Text('The page you requested was not found.')),
            ]),
          ],
        ),
      ),
    ]));
  }
}
