import 'package:flutter/material.dart';

class WishlistSrc extends StatefulWidget {
  const WishlistSrc({super.key});

  @override
  State<WishlistSrc> createState() => _WishlistSrcState();
}

class _WishlistSrcState extends State<WishlistSrc> {
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
