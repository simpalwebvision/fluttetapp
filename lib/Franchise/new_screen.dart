import 'package:chitrakala/controller/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class NewScreen extends StatefulWidget {
  const NewScreen({super.key});

  @override
  State<NewScreen> createState() => _NewScreenState();
}

class _NewScreenState extends State<NewScreen> {
  List dropDownListData = [
    {"title": "sangai international university ", "value": "1"},
    {"title": "subharti university meerut", "value": "2"},
    {"title": "IEC University", "value": "3"},
    {"title": "J.S. University", "value": "4"},
  ];
  List facultyListData = [
    {"title": " FACULTY OF SCINCE", "value": "1"},
    {"title": "FACULTY OF BUSINESS & MANAGEMENT", "value": "2"},
    {"title": "FACULTY OF COMMERCE", "value": "3"},
    {"title": "FACULTY OF ARTS & SOCIAL SCIENCES", "value": "4"},
  ];
  List courseListData = [
    {"title": "M.Sc.", "value": "1"},
    {"title": "B.Sc.(12th)", "value": "2"},
    {"title": "Bachelor in", "value": "3"},
    {"title": "Bachelor in commerce (B.com)", "value": "4"},
  ];

  String selectedUniversityValue = "",
      selectedFacultyValue = "",
      selectedCourseValue = "";

  String dropdoewValue = '1st Year';

  String? gender; //no radio button will be selected
  //String gender = "male"; //if you want to set default value
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 36, 1, 235),
        title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text('Weblord.....')]),
        actions: [
          IconButton(onPressed: () {}, icon: (Icon(Icons.notification_add))),
          SizedBox(
            height: 20,
          ),
        ],
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 4, 38, 230),
              ), //BoxDecoration
              child: SizedBox(
                child: Padding(
                  padding: EdgeInsets.only(left: 70),
                  child: UserAccountsDrawerHeader(
                    decoration:
                        BoxDecoration(color: Color.fromARGB(255, 0, 43, 231)),
                    accountName: Text(
                      "Hello Binod",
                      style: TextStyle(fontSize: 18),
                    ),
                    accountEmail: Text(
                      "13677184",
                      style: TextStyle(fontSize: 20),
                    ),
                    currentAccountPictureSize: Size.square(50),
                    currentAccountPicture: CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 248, 246, 246),
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Center(child: Icon(Icons.home)),
                      ), //Text
                    ), //circleAvatar
                  ),
                ),
              ), //UserAccountDrawerHeader
            ), //DrawerHeader
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text(' Home '),
              onTap: () {
                Navigator.pop(context);
              },
            ),

            ListTile(
              leading: const Icon(Icons.memory_sharp),
              title: const Text(' Members'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.account_balance_wallet),
              title: const Text(' Passbook'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.refresh),
              title: const Text(' Refer'),
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
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Center(
                child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text(
                'ADMISSION FORM',
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            )),
            SizedBox(
              height: 8,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: ListView(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    InputDecorator(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0)),
                        contentPadding: const EdgeInsets.all(10),
                      ),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          value: selectedUniversityValue,
                          isDense: true,
                          isExpanded: true,
                          menuMaxHeight: 350,
                          items: [
                            const DropdownMenuItem(
                                child: Text(
                                  "Select university",
                                ),
                                value: ""),
                            ...dropDownListData
                                .map<DropdownMenuItem<String>>((e) {
                              return DropdownMenuItem(
                                  child: Text(e['title']), value: e['value']);
                            }).toList(),
                          ],
                          onChanged: (newValue) {
                            setState(
                              () {
                                selectedUniversityValue = newValue!;
                                print(selectedUniversityValue);
                              },
                            );
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    InputDecorator(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0)),
                        contentPadding: const EdgeInsets.all(10),
                      ),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          value: selectedFacultyValue,
                          isDense: true,
                          isExpanded: true,
                          menuMaxHeight: 350,
                          items: [
                            const DropdownMenuItem(
                                child: Text(
                                  "Select Faculty",
                                ),
                                value: ""),
                            ...dropDownListData
                                .map<DropdownMenuItem<String>>((e) {
                              return DropdownMenuItem(
                                  child: Text(e['title']), value: e['value']);
                            }).toList(),
                          ],
                          onChanged: (newValue) {
                            setState(
                              () {
                                selectedFacultyValue = newValue!;
                                print(selectedFacultyValue);
                              },
                            );
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    InputDecorator(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0)),
                        contentPadding: const EdgeInsets.all(10),
                      ),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          value: selectedCourseValue,
                          isDense: true,
                          isExpanded: true,
                          menuMaxHeight: 350,
                          items: [
                            const DropdownMenuItem(
                                child: Text(
                                  "Select Program Applied For",
                                ),
                                value: ""),
                            ...dropDownListData
                                .map<DropdownMenuItem<String>>((e) {
                              return DropdownMenuItem(
                                  child: Text(e['title']), value: e['value']);
                            }).toList(),
                          ],
                          onChanged: (newValue) {
                            setState(
                              () {
                                selectedCourseValue = newValue!;
                                print(selectedCourseValue);
                              },
                            );
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    InputDecorator(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0)),
                        contentPadding: const EdgeInsets.all(10),
                      ),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          value: selectedCourseValue,
                          isDense: true,
                          isExpanded: true,
                          menuMaxHeight: 350,
                          items: [
                            const DropdownMenuItem(
                                child: Text(
                                  "Select Select Sub Course",
                                ),
                                value: ""),
                            ...dropDownListData
                                .map<DropdownMenuItem<String>>((e) {
                              return DropdownMenuItem(
                                  child: Text(e['title']), value: e['value']);
                            }).toList(),
                          ],
                          onChanged: (newValue) {
                            setState(
                              () {
                                selectedCourseValue = newValue!;
                                print(selectedCourseValue);
                              },
                            );
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 240),
                      child: DropdownButton<String>(
                        value: dropdoewValue,
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdoewValue = newValue!;
                          });
                        },
                        items: [
                          DropdownMenuItem<String>(
                            value: '1st Year',
                            child: Text('1st Year'),
                          ),
                          DropdownMenuItem<String>(
                            value: '2nd Year',
                            child: Text('2nd Year'),
                          ),
                          DropdownMenuItem<String>(
                            value: '3rd Year',
                            child: Text('3rd Year'),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      maxLength: 32,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        hintText: 'Full Name',
                        labelText: 'Name',
                      ),
                    ),
                    TextFormField(
                      maxLength: 32,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        hintText: 'Father Name',
                        labelText: 'Father Name',
                      ),
                    ),
                    TextFormField(
                      maxLength: 32,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        hintText: 'Mother Name',
                        labelText: 'Mother Name',
                      ),
                    ),
                    TextFormField(
                      maxLength: 32,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        hintText: 'DOB',
                        labelText: 'Date of birth',
                      ),
                    ),
                    TextFormField(
                      maxLength: 32,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        hintText: 'Gender',
                        labelText: 'Gender',
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    TextFormField(
                      maxLength: 32,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        hintText: 'Email',
                        labelText: 'Email',
                      ),
                    ),
                    TextFormField(
                      maxLength: 32,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        hintText: 'Password',
                        labelText: 'Password',
                      ),
                    ),
                    TextFormField(
                      maxLength: 32,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        hintText: 'Mobile No :',
                        labelText: 'Mobile No :',
                      ),
                    ),
                    TextFormField(
                      maxLength: 32,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        hintText: 'Alternate No',
                        labelText: 'Alternate No',
                      ),
                    ),
                    TextFormField(
                      maxLength: 32,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        hintText: 'Permanent Address',
                        labelText: 'Permanent Address',
                      ),
                    ),
                    TextFormField(
                      maxLength: 32,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        hintText: 'City :',
                        labelText: 'City :',
                      ),
                    ),
                    TextFormField(
                      maxLength: 32,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        hintText: 'Pincode',
                        labelText: 'Pincode',
                      ),
                    ),
                    TextFormField(
                      maxLength: 32,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        hintText: 'District',
                        labelText: 'District',
                      ),
                    ),
                    TextFormField(
                      maxLength: 32,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        hintText: 'Select State',
                        labelText: 'Select State',
                      ),
                    ),
                    TextFormField(
                      maxLength: 32,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        hintText: 'Nationality :',
                        labelText: 'Nationality :',
                      ),
                    ),
                    TextFormField(
                      maxLength: 32,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        hintText: 'Adhar No (Optional) :',
                        labelText: 'Adhar No (Optional) :',
                      ),
                    ),
                    SizedBox(
                      height: 28,
                    ),
                    Column(
                      children: [Text('Qualification')],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    MaterialButton(
                      onPressed: () {
                        if (selectedCourseValue == "") {
                          print("Please Select a course");
                        } else {
                          print("Selected Course Value $selectedCourseValue");
                        }
                      },
                      color: Color.fromARGB(255, 73, 7, 255),
                      child: const Text(
                        "Submit",
                        style: TextStyle(fontSize: 25, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
