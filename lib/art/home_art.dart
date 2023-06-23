import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:chitrakala/art/login.dart';
import 'package:chitrakala/controller/auth_controller.dart';
import 'package:flutter/material.dart';

class HomeArt extends StatefulWidget {
  const HomeArt({super.key});

  @override
  State<HomeArt> createState() => _HomeArtState();
}

class _HomeArtState extends State<HomeArt> {
  List imageList = [
    {"id": 2, "image_path": 'assets/images/girl.jpg'},
    {"id": 1, "image_path": 'assets/images/art-competition.jpg'},
    {"id": 2, "image_path": 'assets/images/ART-CONTEST.jpg'},
  ];
  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.red),
        backgroundColor: Colors.white,
        title: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
            padding: const EdgeInsets.only(right: 60),
            child: Center(
              child: Center(
                child: Image.asset(
                  'assets/images/balchitrakala -2.png',
                  scale: 28,
                ),
              ),
            ),
          )
        ]),
        actions: [
          IconButton(onPressed: () {}, icon: (const Icon(Icons.favorite))),
          const SizedBox(
            height: 30,
          ),
          IconButton(onPressed: () {}, icon: (const Icon(Icons.shopping_bag))),
        ],
        centerTitle: true,
      ),
      drawer: Drawer(
          child: ListView(
        padding: const EdgeInsets.all(0),
        children: [
          DrawerHeader(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(colors: <Color>[
                Color.fromARGB(255, 155, 57, 235),
                Colors.black
              ])),
              child: Container(
                child: Column(
                  children: const <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: Material(
                        borderRadius: BorderRadius.all(Radius.circular(50.0)),
                        elevation: 10,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(Icons.home),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Hello Binod',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Text(
                      '13677184',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              )),
          ListTile(
            title: const Text(' Home'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ExpansionTile(
              title: Text("Competition"),
              childrenPadding: EdgeInsets.only(left: 20), //children padding
              children: [
                ListTile(
                  title: Text("Competition"),
                  onTap: () {
                    //action on press
                  },
                ),
                ListTile(
                  title: Text("Traning"),
                  onTap: () {
                    //action on press
                  },
                ),
              ]),
          ListTile(
            title: const Text(' Shop'),
            onTap: () {},
          ),
          ListTile(
            title: const Text('Artist'),
            onTap: () {},
          ),
          ListTile(
            title: const Text('Sell With Us '),
            onTap: () {},
          ),
          ListTile(
            title: const Text(' Logout '),
            onTap: () {
              AuthController.logOut();
            },
          ),
        ],
      )),
      body: SingleChildScrollView(
        child: Column(children: [
          Stack(
            children: [
              InkWell(
                onTap: () {
                  print(currentIndex);
                },
                child: CarouselSlider(
                  items: imageList
                      .map(
                        (item) => Image.asset(
                          item['image_path'],
                          fit: BoxFit.cover,
                          scale: 3,
                          width: double.infinity,
                        ),
                      )
                      .toList(),
                  carouselController: carouselController,
                  options: CarouselOptions(
                    scrollPhysics: const BouncingScrollPhysics(),
                    autoPlay: true,
                    aspectRatio: 2,
                    viewportFraction: 1,
                    onPageChanged: (index, reason) {
                      setState(() {
                        currentIndex = index;
                      });
                    },
                  ),
                ),
              ),
              Positioned(
                bottom: 10,
                left: 0,
                right: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: imageList.asMap().entries.map((entry) {
                    return GestureDetector(
                      onTap: () => carouselController.animateToPage(entry.key),
                      child: Container(
                        width: currentIndex == entry.key ? 17 : 7,
                        height: 7.0,
                        margin: const EdgeInsets.symmetric(
                          horizontal: 3.0,
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: currentIndex == entry.key
                                ? Colors.red
                                : const Color.fromARGB(255, 40, 4, 201)),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              child: Column(
                children: [
                  Text(
                    textAlign: TextAlign.justify,
                    'Competition closes on 30th June 2023',
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                  Text(
                    textAlign: TextAlign.justify,
                    "Every year Nav Shri Art & Culture Organisation organises painting competition on national level for all professional artist, school teachers, students of fine arts from fine art institutes, schools, colleges, academics, art faculty, anybody who has a propensity for drawing & painting or hobby pursuer of art, as well as professional - level amateur fine artist with a minimum age of 18 years & above are eligible to participate in the competition. This competition's subject is to eradicate the squalor from our society and we provide a new theme every year. Artists from all over India participate in this and the winners are awarded with cash prizes, trophies, scholarships, gift hampers, certificates etc. Winners’ artworks are also exhibited in the art exhibition to encourage the art of an artist Art is the conscious use of skill and creative imagination especially in production of aesthetic objects. It is a personal unanalyzable creative power endowed to an individual. An amalgamation of skill and imagination yields artistic creativity. The contribution of art in our society is indispensabl",
                    style: TextStyle(color: Colors.black, fontSize: 10),
                  )
                ],
              ),
            ),
          ),
          Center(
              child: Text(
            'Art Competition Highlights :-',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25),
          )),
          Container(
            width: 500,
            height: 200,
            child: LayoutBuilder(builder: (context, size) {
              return Row(
                children: [
                  Expanded(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                              child: Text(
                            '24 x 7 Online submission - FREE Open for all age groups and nationalities (1) less than 5 years (2) 5 to 15 years (3) 15 to 30 years (4) 30 to 60 years (5) 60 years and above',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          )),
                          Expanded(
                            child: Container(
                                child: Text(
                              "Submit drawings, paintings, cartoons, doodles, sketches, posters, digital art, collage Use any drawing or painting medium of your choice You have the freedom to select your subject or theme Quarterly contest - closes every quarter end and a new contest opens Artwork sizes : A5 / A4 / A3 / postcard You can submit a maximum of 5 artworks. Certificate of Participation will be generated online for each participant. All participants are requested to download their certificate.Prizes include medals ( gold, silver, bronze) and certificates for medal winners, honorable mentions and shortlisted",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            )),
                          ),
                          Expanded(
                            child: Container(
                              child: Text(
                                textAlign: TextAlign.justify,
                                "1st Prize : 21,000/-2nd Prize : 11,000/- 3rd Prize : 5,100/-Along with this, All the Winners will Also be Given a share in the Trophy, Award Certificate, Gift Hampers, National Level Art Exhibition.",
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              child: Text(
                                textAlign: TextAlign.justify,
                                "Top 20 Nominated Artists Get a Opportunity to Participate in Group Exhibition on National LevelParticipation Certificate for All Participants",
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ]),
                  ),
                  Container(
                    child: Image.asset(
                      'assets/images/artist.jpg',
                      scale: 1,
                    ),
                  ),
                ],
              );
            }),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Benefits of being shortlisted :-',
            style: TextStyle(
                color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 7,
          ),
          Column(
            children: [
              Text(
                textAlign: TextAlign.justify,
                "Shortlisted artworks will undergo a second round of judging to decide Medals (Gold, Silver, Bronze) and Honorable Mentions.Certificates for Shortlisted, Honorable Mentions and Medal Winners will carry the image of the artwork.We create a dedicated web page for you. You can keep adding your new artworks to your dedicated web page for a period of 3 years.Your artworks will be promoted and put out for sale on Indiaart art portal.We encourage all shortlisted artists to talk about their art. These audios will be shared on our SoundCloud account.",
                style: TextStyle(
                  fontSize: 15,
                ),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          MaterialButton(
              minWidth: 100,
              color: Colors.redAccent,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginPage()));
              },
              child: Text(
                'Login/Registration',
                style: TextStyle(color: Colors.black),
              )),
          Column(
            children: <Widget>[
              ListTile(
                leading: const Icon(Icons.phone_android, color: Colors.black),
                title: const Text(
                  ' (+91) 8422-014-356 ',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.black),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.language, color: Colors.black),
                title: const Text(
                  ' http://balchitrakala.com/ ',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.black),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.email, color: Colors.black),
                title: const Text(
                  ' Support@balchitrkal.in ',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.black),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.map_sharp, color: Colors.black),
                title: const Text(
                  'B-Wing,G-5,Sargam Apartment Ramdas Near Aditya Hotel,Vasai(East),Palghar -401208. ',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                      color: Colors.black),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          )
        ]),
      ),
    );
  }
}
