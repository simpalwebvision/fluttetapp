import 'package:flutter/material.dart';

class Menuopen extends StatefulWidget {
  const Menuopen({super.key});

  @override
  State<Menuopen> createState() => _MenuopenState();
}

class _MenuopenState extends State<Menuopen> {
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: <Widget>[
              Text(
                'Showing 1–14 of 26 results',
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
                          'assets/images/sunset.jpg',
                        )),
                        borderRadius: BorderRadius.circular(20.0)),
                  ),
                  SizedBox(
                    width: 12.0,
                  ),
                  Container(
                    child: Column(
                      children: [
                        Text(
                          'Paintings',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        Text("Color  Pencil Art | Nature art"),
                        Text("drawings paintings"),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              size: 15,
                              color: Color(
                                0xffd17842,
                              ),
                            ),
                            Icon(
                              Icons.star,
                              size: 15,
                              color: Color(
                                0xffd17842,
                              ),
                            ),
                            Icon(
                              Icons.star,
                              size: 15,
                              color: Color(
                                0xffd17842,
                              ),
                            ),
                            Icon(
                              Icons.star,
                              size: 15,
                              color: Color(
                                0xffd17842,
                              ),
                            ),
                            Icon(
                              Icons.star,
                              size: 15,
                              color: Color(
                                0xffd17842,
                              ),
                            ),
                          ],
                        ),
                        Text('82.00'),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                            textAlign: TextAlign.justify,
                            'Auctor urna nunc id cursus.'),
                        Text(
                            textAlign: TextAlign.justify,
                            'Scelerisque purus semper eget'),
                        Text(
                            textAlign: TextAlign.justify,
                            'duis at pharetra vel turpis  eget.'),
                        ElevatedButton(
                            onPressed: () {}, child: Text('Add To Cart')),
                      ],
                    ),
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
                          'assets/images/sunset.jpg',
                        )),
                        borderRadius: BorderRadius.circular(20.0)),
                  ),
                  SizedBox(
                    width: 12.0,
                  ),
                  Container(
                    child: Column(
                      children: [
                        Text(
                          'Paintings',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        Text("Color  Pencil Art | Nature art"),
                        Text("drawings paintings"),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              size: 15,
                              color: Color(
                                0xffd17842,
                              ),
                            ),
                            Icon(
                              Icons.star,
                              size: 15,
                              color: Color(
                                0xffd17842,
                              ),
                            ),
                            Icon(
                              Icons.star,
                              size: 15,
                              color: Color(
                                0xffd17842,
                              ),
                            ),
                            Icon(
                              Icons.star,
                              size: 15,
                              color: Color(
                                0xffd17842,
                              ),
                            ),
                            Icon(
                              Icons.star,
                              size: 15,
                              color: Color(
                                0xffd17842,
                              ),
                            ),
                          ],
                        ),
                        Text('126.00'),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                            textAlign: TextAlign.justify,
                            'Auctor urna nunc id cursus.'),
                        Text(
                            textAlign: TextAlign.justify,
                            'Auctor urna nunc id cursus.'),
                        Text(
                            textAlign: TextAlign.justify,
                            'Scelerisque purus semper eget'),
                        Text(
                            textAlign: TextAlign.justify,
                            'duis at pharetra vel turpis  eget.'),
                        ElevatedButton(
                            onPressed: () {}, child: Text('Add To Cart')),
                      ],
                    ),
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
                          'assets/images/sunset.jpg',
                        )),
                        borderRadius: BorderRadius.circular(20.0)),
                  ),
                  SizedBox(
                    width: 12.0,
                  ),
                  Container(
                    child: Column(
                      children: [
                        Text(
                          'Paintings',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        Text("Color  Pencil Art | Nature art"),
                        Text("drawings paintings"),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              size: 15,
                              color: Color(
                                0xffd17842,
                              ),
                            ),
                            Icon(
                              Icons.star,
                              size: 15,
                              color: Color(
                                0xffd17842,
                              ),
                            ),
                            Icon(
                              Icons.star,
                              size: 15,
                              color: Color(
                                0xffd17842,
                              ),
                            ),
                            Icon(
                              Icons.star,
                              size: 15,
                              color: Color(
                                0xffd17842,
                              ),
                            ),
                            Icon(
                              Icons.star,
                              size: 15,
                              color: Color(
                                0xffd17842,
                              ),
                            ),
                          ],
                        ),
                        Text('45.00'),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                            textAlign: TextAlign.justify,
                            'Auctor urna nunc id cursus.'),
                        Text(
                            textAlign: TextAlign.justify,
                            'Auctor urna nunc id cursus.'),
                        Text(
                            textAlign: TextAlign.justify,
                            'Scelerisque purus semper eget'),
                        Text(
                            textAlign: TextAlign.justify,
                            'duis at pharetra vel turpis  eget.'),
                        ElevatedButton(
                            onPressed: () {}, child: Text('Add To Cart')),
                      ],
                    ),
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
                          'assets/images/sunset.jpg',
                        )),
                        borderRadius: BorderRadius.circular(20.0)),
                  ),
                  SizedBox(
                    width: 12.0,
                  ),
                  Container(
                    child: Column(
                      children: [
                        Text(
                          'Paintings',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        Text("Color  Pencil Art | Nature art"),
                        Text("drawings paintings"),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              size: 15,
                              color: Color(
                                0xffd17842,
                              ),
                            ),
                            Icon(
                              Icons.star,
                              size: 15,
                              color: Color(
                                0xffd17842,
                              ),
                            ),
                            Icon(
                              Icons.star,
                              size: 15,
                              color: Color(
                                0xffd17842,
                              ),
                            ),
                            Icon(
                              Icons.star,
                              size: 15,
                              color: Color(
                                0xffd17842,
                              ),
                            ),
                            Icon(
                              Icons.star,
                              size: 15,
                              color: Color(
                                0xffd17842,
                              ),
                            ),
                          ],
                        ),
                        Text('78.00'),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                            textAlign: TextAlign.justify,
                            'Auctor urna nunc id cursus.'),
                        Text(
                            textAlign: TextAlign.justify,
                            'Auctor urna nunc id cursus.'),
                        Text(
                            textAlign: TextAlign.justify,
                            'Scelerisque purus semper eget'),
                        Text(
                            textAlign: TextAlign.justify,
                            'duis at pharetra vel turpis  eget.'),
                        ElevatedButton(
                            onPressed: () {}, child: Text('Add To Cart')),
                      ],
                    ),
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
                          'assets/images/sunset.jpg',
                        )),
                        borderRadius: BorderRadius.circular(20.0)),
                  ),
                  SizedBox(
                    width: 12.0,
                  ),
                  Container(
                    child: Column(
                      children: [
                        Text(
                          'Paintings',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        Text("Color  Pencil Art | Nature art"),
                        Text("drawings paintings"),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              size: 15,
                              color: Color(
                                0xffd17842,
                              ),
                            ),
                            Icon(
                              Icons.star,
                              size: 15,
                              color: Color(
                                0xffd17842,
                              ),
                            ),
                            Icon(
                              Icons.star,
                              size: 15,
                              color: Color(
                                0xffd17842,
                              ),
                            ),
                            Icon(
                              Icons.star,
                              size: 15,
                              color: Color(
                                0xffd17842,
                              ),
                            ),
                            Icon(
                              Icons.star,
                              size: 15,
                              color: Color(
                                0xffd17842,
                              ),
                            ),
                          ],
                        ),
                        Text('89.00'),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                            textAlign: TextAlign.justify,
                            'Auctor urna nunc id cursus.'),
                        Text(
                            textAlign: TextAlign.justify,
                            'Auctor urna nunc id cursus.'),
                        Text(
                            textAlign: TextAlign.justify,
                            'Scelerisque purus semper eget'),
                        Text(
                            textAlign: TextAlign.justify,
                            'duis at pharetra vel turpis  eget.'),
                        ElevatedButton(
                            onPressed: () {}, child: Text('Add To Cart')),
                      ],
                    ),
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
                          'assets/images/sunset.jpg',
                        )),
                        borderRadius: BorderRadius.circular(20.0)),
                  ),
                  SizedBox(
                    width: 12.0,
                  ),
                  Container(
                    child: Column(
                      children: [
                        Text(
                          'Paintings',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        Text("Color  Pencil Art | Nature art"),
                        Text("drawings paintings"),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              size: 15,
                              color: Color(
                                0xffd17842,
                              ),
                            ),
                            Icon(
                              Icons.star,
                              size: 15,
                              color: Color(
                                0xffd17842,
                              ),
                            ),
                            Icon(
                              Icons.star,
                              size: 15,
                              color: Color(
                                0xffd17842,
                              ),
                            ),
                            Icon(
                              Icons.star,
                              size: 15,
                              color: Color(
                                0xffd17842,
                              ),
                            ),
                            Icon(
                              Icons.star,
                              size: 15,
                              color: Color(
                                0xffd17842,
                              ),
                            ),
                          ],
                        ),
                        Text('56.00'),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          textAlign: TextAlign.justify,
                          'Auctor urna nunc id cursus.',
                        ),
                        Text(
                            textAlign: TextAlign.justify,
                            'Auctor urna nunc id cursus.'),
                        Text(
                            textAlign: TextAlign.justify,
                            'Scelerisque purus semper eget'),
                        Text(
                            textAlign: TextAlign.justify,
                            'duis at pharetra vel turpis  eget.'),
                        ElevatedButton(
                            onPressed: () {}, child: Text('Add To Cart')),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
