import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "Hello BMC Flutter",
      home: Scaffold(
          appBar: AppBar(title: Text('Hello BMC Flutter'),
          backgroundColor: Colors.deepOrange,
          ),
          body: Builder(builder:(context)=> Center (
          child: Column (children: [
            Text(
              'Hello Flutter',
              style: TextStyle(
                  fontSize: 46,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue[900]),
            ),

            Text(
              'Discover the flutter',
              style: TextStyle(fontSize: 20, color: Colors.deepPurpleAccent),
            ),

            Image.network('https://images.freeimages.com/images/large-previews/eaa/the-beach-1464354.jpg',
            height: 350,
            ),
            ElevatedButton(
              child: Text('Contact Us'),
              onPressed: () => contactUs(context), // we change the onpressed to call the contactUs Context methid
            )

          ]
          )))));
  }
} //end line of my class


void contactUs(BuildContext context) {
  showDialog(context: context,
      builder: (BuildContext) {
        return AlertDialog(
          title: Text('Contact Us'),
          content: Text('mail us at grc@gmail.com'),
          actions: <Widget>[
            TextButton(
              child: Text('Close'),
              onPressed: () => Navigator.of(context).pop(),

            ) //textbutton
          ], //actions
        ); //return
      } //builder
  ); //showdialog
} //void contactus
























