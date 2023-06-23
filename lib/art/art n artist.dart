import 'package:chitrakala/controller/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class ArtNArtist extends StatefulWidget {
  const ArtNArtist({super.key});

  @override
  State<ArtNArtist> createState() => _ArtNArtistState();
}

class _ArtNArtistState extends State<ArtNArtist> {
  String content =
      "Bal Chitrakala refers to the art of children's drawing and painting. It is a form of creative expression that allows children to express themselves visually, using various colors, shapes, and designs. Bal Chitrakala is an important part of children's education and development as it helps them to improve their motor skills, cognitive abilities, and emotional development.Children are naturally inclined to draw and paint from a young age. They use art as a means of communication, and it helps them to express their thoughts and emotions in a way that words cannot always capture. Bal Chitrakala helps to stimulate their imagination, improve their hand-eye coordination, and develop their fine motor skills.Bal Chitrakala is not just about drawing and painting; it is also about the process of creating something new. Children learn to experiment with different materials, techniques, and colors, which helps them to develop their creativity and problem-solving skills. It also helps them to develop their self-confidence and self-expression, which is important for their overall development.There are various techniques and styles of Bal Chitrakala that children can explore, including watercolor painting, finger painting, crayon drawing, and sketching. Children can draw and paint anything that they like, such as animals, flowers, landscapes, and people. They can also create their own imaginary worlds and characters, which is a great way to develop their creativity and imagination.Bal Chitrakala is an important part of the school curriculum in many countries, and it is often used as a tool to teach children about different cultures, traditions, and history. It is also used to teach children about environmental awareness, social issues, and emotional intelligence. By engaging in Bal Chitrakala, children learn to appreciate the beauty of the world around them, and they develop a sense of empathy and compassion for others.In conclusion, Bal Chitrakala is an important form of creative expression that helps children to develop their motor skills, cognitive abilities, and emotional development. It allows them to express themselves in a way that words cannot always capture and helps them to develop their creativity and problem-solving skills. Bal Chitrakala is an essential part of children's education and development, and it should be encouraged and promoted in schools and homes.";
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
          IconButton(
              onPressed: () {}, icon: (const Icon(Icons.notification_add))),
          const SizedBox(
            height: 20,
          ),
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
            leading: const Icon(Icons.home),
            title: const Text(' dashboard '),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ExpansionTile(
              title: Text("Admission"),
              leading: Icon(Icons.person), //add icon
              childrenPadding: EdgeInsets.only(left: 60), //children padding
              children: [
                ListTile(
                  title: Text("Career in Art Field"),
                  onTap: () {
                    //action on press
                  },
                ),
                ListTile(
                  title: Text("Admission Process"),
                  onTap: () {
                    //action on press
                  },
                ),
                ListTile(
                  title: Text("Online Registration"),
                  onTap: () {
                    //action on press
                  },
                ),
              ]),
          ListTile(
            leading: const Icon(Icons.computer),
            title: const Text(' Join Us'),
            onTap: () {},
          ),
          ExpansionTile(
              title: Text("Gallery"),
              leading: Icon(Icons.browse_gallery_sharp), //add icon
              childrenPadding: EdgeInsets.only(left: 60), //children padding
              children: [
                ListTile(
                  title: Text("Photo Gallery"),
                  onTap: () {
                    //action on press
                  },
                ),
                ListTile(
                  title: Text("Video Gallery"),
                  onTap: () {
                    //action on press
                  },
                ),
              ]),
          ListTile(
            leading: const Icon(Icons.my_library_books),
            title: const Text('Events '),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.book_online_outlined),
            title: const Text('Contact Us'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text(' Logout '),
            onTap: () {
              AuthController.logOut();
            },
          ),
        ],
      )),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(15),
          child: ReadMoreText(
            content,
            trimLines: 10,
            textAlign: TextAlign.justify,
            trimMode: TrimMode.Line,
            trimCollapsedText: " Read More ",
            trimExpandedText: " Show Less ",
            lessStyle: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.green[700],
            ),
            moreStyle: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.green[700],
            ),
            style: TextStyle(
              fontSize: 16,
              height: 2,
            ),
          ),
        ),
      ),
    );
  }
}
