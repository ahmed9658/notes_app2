import 'package:flutter/material.dart';

class home_view extends StatelessWidget {
  const home_view({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 13.0, vertical: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Notes',
                  style: TextStyle(fontSize: 25),
                ),
                Container(
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13),
                        color: Colors.white.withOpacity(0.1)),
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.search,
                        )))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:13.0),
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 32,horizontal: 22),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  ListTile(
                    contentPadding: EdgeInsets.all(0),
                    title: Text(
                      'Flutter Tips',
                      style: TextStyle(
                          fontFamily: 'poppins',
                          fontWeight: FontWeight.w600,
                          fontSize: 25,
                          color: Colors.black),
                    ),
                    subtitle: Padding(
                      padding: const EdgeInsets.symmetric(vertical:15.0),
                      child: Text(
                        'Build Your carrier with tharwat samy',
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.4),
                          fontFamily: 'poppins',
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    trailing: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.delete,
                          color: Colors.black,
                          size: 30,
                        ),
                        ),
                  ),
                  Text('May 21,2022',
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.4),
                    fontFamily: 'poppins',
                        fontWeight: FontWeight.w600,
                  ),
                  )
                ],
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(13),
                  color: Color(0xffFFCD7A)),
            ),
          )
        ],
      ),
    );
  }
}
