import 'package:flutter/material.dart';
import 'package:notes2/views/home_view.dart';

class notes_app extends StatelessWidget {
  const notes_app({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: home_view(),
    );
  }
}

void main(){
  runApp(notes_app());
}