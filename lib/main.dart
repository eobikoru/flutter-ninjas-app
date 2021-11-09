import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  get child => null;
  int level = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('OBIKORU NINNJA ID'),
        centerTitle: true,
        backgroundColor: Colors.black,
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(20, 20, 10, 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/emeka1.jpg'),
                radius: 70.0,
              ),
            ),
            Divider(
              height: 70.0,
            ),
            Text('NAME',
                style: TextStyle(
                    letterSpacing: 2.0,
                    fontSize: 20.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold)),
            SizedBox(
              height: 20.0,
            ),
            Text('obikoru emeka daniel',
                style: TextStyle(
                    letterSpacing: 2.0,
                    fontSize: 30.0,
                    color: Colors.yellow,
                    fontWeight: FontWeight.bold)),
            SizedBox(
              height: 20.0,
            ),
            Text('LEVEL',
                style: TextStyle(
                    letterSpacing: 2.0,
                    fontSize: 20.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold)),
            SizedBox(
              height: 20.0,
            ),
            Text('$level',
                style: TextStyle(
                    letterSpacing: 2.0,
                    fontSize: 30.0,
                    color: Colors.yellow,
                    fontWeight: FontWeight.bold)),
            SizedBox(
              height: 20.0,
            ),
            Row(
              children: [
                Icon(Icons.email),
                SizedBox(
                  width: 25.0,
                ),
                Text('emekadaniel916@gmail.com'),
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            level += 1;
          });
        },
      ),
    );
  }
}
