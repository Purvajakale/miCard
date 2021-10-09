import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: profileCard(),
    );
  }
}

class profileCard extends StatefulWidget {
  const profileCard({Key? key}) : super(key: key);

  @override
  _profileCardState createState() => _profileCardState();
}

class _profileCardState extends State<profileCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff7266d8),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                radius: 50,
                backgroundImage:
                AssetImage('images/profile.png'),
              ),
            ),
            Text(
              "John doe",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22.0,
                color: Colors.white,
              ),
            ),
            Text(
              "Flutter developer",
              style: TextStyle(
                fontSize: 18.0,
                letterSpacing: 2.5,
                color: Colors.blue.shade50,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Divider(
                color: Color(0xffd4d1f3),
                indent: 40,
                endIndent: 40,
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(150),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.phone,),
                    ),
                      Text(
                        "Contact: ",
                        style: TextStyle(
                          fontSize: 15.0,
                          letterSpacing: 2.5,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                       Text(
                        "+89 29489-37894",
                        style: TextStyle(
                          fontSize: 15.0,
                          letterSpacing: 2.5,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                  ],
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(150),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.mail,
                      ),
                    ),
                    Text(
                      "mail-id: ",
                      style: TextStyle(
                        fontSize: 15.0,
                        letterSpacing: 2.5,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "johndoe@gmail.com",
                      style: TextStyle(
                        fontSize: 15.0,
                        letterSpacing: 2.5,
                        fontWeight: FontWeight.bold,
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