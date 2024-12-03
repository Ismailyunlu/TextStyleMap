import 'package:flutter/material.dart';
import 'text_style_map.dart'; // TextStyleMap sınıfının bulunduğu dosyayı import edin.

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ExamplePage(),
      theme: ThemeData(
        textTheme: TextTheme(
          headline1: h1.bold,
          headline2: h2.medium,
          bodyText1: mediumText.call(),
          bodyText2: smallText.call(),
        ),
      ),
    );
  }
}

class ExamplePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "TextStyleMap Example",
          style: h3.bold,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Header (H1 - Bold)",
              style: h1.bold,
            ),
            SizedBox(height: 8),
            Text(
              "Sub Ttile (H2 - Medium)",
              style: h2.medium,
            ),
            SizedBox(height: 8),
            Text(
              "Normal Text (Large Text)",
              style: largeText(),
            ),
            SizedBox(height: 8),
            Text(
              "Link Text",
              style: largeText.link.copyWith(color: Colors.blue),
            ),
            SizedBox(height: 16),
            Text(
              "Small Description Text (Caption)",
              style: caption(color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
