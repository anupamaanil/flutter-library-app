

import 'package:flutter/material.dart';
import 'package:library_app/form%20page.dart';

void main()
{
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Library"),
        ),
        body: Formm()
      ),
    );
  }
}
