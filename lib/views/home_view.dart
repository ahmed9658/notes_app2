import 'package:flutter/material.dart';
import 'package:notes2/views/note_edit_view.dart';

class home_view extends StatelessWidget {
  const home_view({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)),
              context: context,
              builder: (context) {
                return bottom_sheet();
              });
        },
        child: const Icon(Icons.add),
      ),
      body: const Column(
        children: [
          custom_appbar(title: 'Notes', icon: Icon(Icons.search),),
          custom_note_list(),
        ],
      ),
    );
  }
}

class bottom_sheet extends StatelessWidget {
  const bottom_sheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 9.0, vertical: 25),
            child: Container(
              child: Center(
                child: Text(
                  'Add',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 19,
                      fontFamily: 'poppins',
                      fontWeight: FontWeight.w600),
                ),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Color(
                  0xff63FFDA,
                ),
              ),
              height: 55,
            ),
          )
        ],
      ),
    );
  }
}

class custom_note_list extends StatelessWidget {
  const custom_note_list({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, i) => const custom_note(),
          separatorBuilder: (context, i) => const SizedBox(
                height: 22,
              ),
          itemCount: 10),
    );
  }
}

class custom_appbar extends StatelessWidget {
  const custom_appbar({
    required this.icon,required this.title,
    super.key,
  });

  final String title;
  final Icon icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(right: 18.0, left: 18.0, top: 35, bottom: 6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
           Text(
            title,
            style: const TextStyle(fontSize: 25),
          ),
          Container(
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                color: Colors.white.withOpacity(0.1)),
            child: IconButton(
              onPressed: () {},
              icon: icon
            ),
          ),
        ],
      ),
    );
  }
}

class custom_note extends StatelessWidget {
  const custom_note({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) { return edit_note();},
            ),
          );
        },
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 22),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13),
              color: const Color(0xffFFCD7A)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                contentPadding: const EdgeInsets.all(0),
                title: const Text(
                  'Flutter Tips',
                  style: TextStyle(
                      fontFamily: 'poppins',
                      fontWeight: FontWeight.w600,
                      fontSize: 25,
                      color: Colors.black),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15.0),
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
                  icon: const Icon(
                    Icons.delete,
                    color: Colors.black,
                    size: 30,
                  ),
                ),
              ),
              Text(
                'May 21,2022',
                style: TextStyle(
                  color: Colors.black.withOpacity(0.4),
                  fontFamily: 'poppins',
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
