import 'package:flutter/material.dart';
import 'package:notes2/views/home_view.dart';

class edit_note extends StatelessWidget {
  const edit_note({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          custom_appbar(title: 'Edit Note', icon: Icon(Icons.check),),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 25),
            child: TextField(
              decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 16, vertical: 22),
                hintText: 'Title',
                hintStyle: TextStyle(color: Color(0xff63FFDA)),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(
                      color: Colors.white,
                    )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: TextField(
              maxLines: 5,
              decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 16, vertical: 22),
                hintText: 'Content',
                hintStyle: TextStyle(
                  color: Color(
                    0xff63FFDA,
                  ),
                ),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(
                      color: Colors.white,
                    )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}