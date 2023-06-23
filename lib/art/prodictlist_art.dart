import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProdictistArt extends StatefulWidget {
  const ProdictistArt({super.key});

  @override
  State<ProdictistArt> createState() => _ProdictistArtState();
}

class _ProdictistArtState extends State<ProdictistArt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.keyboard_arrow_left,
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: <Widget>[
            Text(
              'Wishlist',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 21.0,
              ),
            ),
            SizedBox(
              height: 12.0,
            ),
            Row(
              children: [
                Container(
                  width: 80.0,
                  height: 80.0,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                        'assets/images/grass.jpg',
                      )),
                      borderRadius: BorderRadius.circular(20.0)),
                ),
                SizedBox(
                  width: 12.0,
                ),
                Container(
                  child: Column(
                    children: [Text('Frame Canvas Painting'), Text("76.00")],
                  ),
                ),
                SizedBox(
                  width: 15.0,
                ),
                Row(
                  children: [
                    Container(
                      width: 20.0,
                      height: 20.0,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 15,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('1'),
                ),
                Row(
                  children: [
                    Container(
                      width: 20.0,
                      height: 20.0,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                      child: Icon(
                        Icons.add,
                        size: 15,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.0,
                  width: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: MaterialButton(
                      color: Colors.blue,
                      onPressed: () {},
                      child: Text(
                        'Add To Cart',
                        style: TextStyle(fontSize: 15),
                      )),
                ),
              ],
            ),
            SizedBox(
              height: 12.0,
            ),
            Row(
              children: [
                Container(
                  width: 80.0,
                  height: 80.0,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                        'assets/images/grass.jpg',
                      )),
                      borderRadius: BorderRadius.circular(20.0)),
                ),
                SizedBox(
                  width: 12.0,
                ),
                Container(
                  child: Column(
                    children: [Text('Frame Canvas Painting'), Text("76.00")],
                  ),
                ),
                SizedBox(
                  width: 12.0,
                ),
                Row(
                  children: [
                    Container(
                      width: 20.0,
                      height: 20.0,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 15,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('1'),
                ),
                Container(
                  width: 20.0,
                  height: 20.0,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  child: Icon(
                    Icons.add,
                    size: 15,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                ElevatedButton(onPressed: () {}, child: Text('Add To Cart')),
              ],
            ),
            SizedBox(
              height: 12.0,
            ),
            Row(
              children: [
                Container(
                  width: 80.0,
                  height: 80.0,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                        'assets/images/grass.jpg',
                      )),
                      borderRadius: BorderRadius.circular(20.0)),
                ),
                SizedBox(
                  width: 12.0,
                ),
                Container(
                  child: Column(
                    children: [Text('Frame Canvas Painting'), Text("76.00")],
                  ),
                ),
                SizedBox(
                  width: 12.0,
                ),
                Row(
                  children: [
                    Container(
                      width: 20.0,
                      height: 20.0,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 15,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('1'),
                ),
                Container(
                  width: 20.0,
                  height: 20.0,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  child: Icon(
                    Icons.add,
                    size: 15,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                ElevatedButton(onPressed: () {}, child: Text('Add To Cart')),
              ],
            ),
            SizedBox(
              height: 12.0,
            ),
            Row(
              children: [
                Container(
                  width: 80.0,
                  height: 80.0,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                        'assets/images/grass.jpg',
                      )),
                      borderRadius: BorderRadius.circular(20.0)),
                ),
                SizedBox(
                  width: 12.0,
                ),
                Container(
                  child: Column(
                    children: [Text('Frame Canvas Painting'), Text("76.00")],
                  ),
                ),
                SizedBox(
                  width: 12.0,
                ),
                Row(
                  children: [
                    Container(
                      width: 20.0,
                      height: 20.0,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 15,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('1'),
                ),
                Container(
                  width: 20.0,
                  height: 20.0,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  child: Icon(
                    Icons.add,
                    size: 15,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                ElevatedButton(onPressed: () {}, child: Text('Add To Cart')),
              ],
            ),
            SizedBox(
              height: 12.0,
            ),
            Row(
              children: [
                Container(
                  width: 80.0,
                  height: 80.0,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                        'assets/images/grass.jpg',
                      )),
                      borderRadius: BorderRadius.circular(20.0)),
                ),
                SizedBox(
                  width: 12.0,
                ),
                Container(
                  child: Column(
                    children: [Text('Frame Canvas Painting'), Text("76.00")],
                  ),
                ),
                SizedBox(
                  width: 12.0,
                ),
                Row(
                  children: [
                    Container(
                      width: 20.0,
                      height: 20.0,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 15,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('1'),
                ),
                Container(
                  width: 20.0,
                  height: 20.0,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  child: Icon(
                    Icons.add,
                    size: 15,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                ElevatedButton(onPressed: () {}, child: Text('Add To Cart')),
              ],
            ),
            SizedBox(
              height: 12.0,
            ),
            Row(
              children: [
                Container(
                  width: 80.0,
                  height: 80.0,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                        'assets/images/grass.jpg',
                      )),
                      borderRadius: BorderRadius.circular(20.0)),
                ),
                SizedBox(
                  width: 12.0,
                ),
                Container(
                  child: Column(
                    children: [Text('Frame Canvas Painting'), Text("76.00")],
                  ),
                ),
                SizedBox(
                  width: 12.0,
                ),
                Row(
                  children: [
                    Container(
                      width: 20.0,
                      height: 20.0,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 15,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('1'),
                ),
                Container(
                  width: 20.0,
                  height: 20.0,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  child: Icon(
                    Icons.add,
                    size: 15,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                ElevatedButton(onPressed: () {}, child: Text('Add To Cart')),
              ],
            )
          ],
        ),
      ),
    );
  }
}
