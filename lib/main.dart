import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Flutter App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Center column vertically
          children: <Widget>[
            Text(
              'Welcome to My Flutter App!',
              style: TextStyle(fontSize: 24), // Set the font size for the text
            ),
            SizedBox(height: 20), // Add space between the widgets
            ElevatedButton(
              onPressed: () {
                print('Button Pressed!'); // Print message to console
              },
              child: Text('Click Me'),
            ),
            SizedBox(height: 20), // Add space between the button and image
            Image.network(
              'https://flutter.dev/assets/images/shared/brand/flutter/logo/flutter-lockup.png',
              height: 100, // Adjust the height of the image
            ),
          ],
        ),
      ),
    );
  }
}
