// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      theme: ThemeData.light(useMaterial3: true),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Instagram',
            style: GoogleFonts.lobster(fontSize: 35),
          ),
          actions: [
            FaIcon(
              FontAwesomeIcons.heart,
              color: Colors.black,
            ),
            const SizedBox(width: 30),
            FaIcon(
              FontAwesomeIcons.facebookMessenger,
              color: Colors.black,
            ),
            const SizedBox(width: 25),
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 8, 0, 0),
              child: SizedBox(
                height: 100,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                    return storyProfile(index);
                  },
                ),
              ),
            ),
            Divider(
              color: Colors.grey[200],
              height: 10,
              thickness: 2,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(5, 8, 0, 10),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: CircleAvatar(
                                backgroundImage:
                                    AssetImage('assets/images/profile.png'),
                              ),
                            ),
                            Expanded(
                                flex: 6,
                                child: Text(
                                  "5_alira_6",
                                  style: GoogleFonts.openSans(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                )),
                            Expanded(flex: 1, child: Icon(Icons.more_horiz)),
                          ],
                        ),
                      ),
                      Image.asset('assets/images/image1.jpg'),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 110,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  FaIcon(FontAwesomeIcons.heart),
                                  FaIcon(FontAwesomeIcons.comment),
                                  FaIcon(FontAwesomeIcons.paperPlane),
                                ],
                              ),
                            ),
                            FaIcon(FontAwesomeIcons.bookmark),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 13.0),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 11,
                              backgroundColor: Colors.white,
                              child: CircleAvatar(
                                radius: 9,
                                backgroundImage:
                                    AssetImage('assets/images/profile.png'),
                              ),
                            ),
                            Align(
                              widthFactor: .3,
                              child: CircleAvatar(
                                radius: 11,
                                backgroundColor: Colors.white,
                                child: CircleAvatar(
                                  radius: 9,
                                  backgroundImage:
                                      AssetImage('assets/images/profile.png'),
                                ),
                              ),
                            ),
                            CircleAvatar(
                              radius: 11,
                              backgroundColor: Colors.white,
                              child: CircleAvatar(
                                radius: 9,
                                backgroundImage:
                                    AssetImage('assets/images/profile.png'),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 6.0),
                              child: Text(
                                'Liked by ',
                                style: GoogleFonts.openSans(fontSize: 16),
                              ),
                            ),
                            Text(
                              'kyia_kayaks ',
                              style: GoogleFonts.openSans(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                            Text(
                              'and ',
                              style: GoogleFonts.openSans(fontSize: 16),
                            ),
                            Text(
                              'others',
                              style: GoogleFonts.openSans(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(15.0, 8.0, 0, 0),
                        child: Row(
                          children: [
                            Text('5_alira_6',
                                style: GoogleFonts.openSans(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                )),
                            Text(' My little cat Rio',
                                style: GoogleFonts.openSans(fontSize: 16)),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(15.0, 10.0, 0, 0),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 13.0,
                              backgroundImage:
                                  AssetImage('assets/images/profile.png'),
                            ),
                            Text(' Add a comment...',
                                style: GoogleFonts.openSans(fontSize: 15))
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(15.0, 5.0, 0, 8.0),
                        child: Text('15 hours ago',
                            style: GoogleFonts.openSans(
                                color: Colors.grey[500], fontSize: 15)),
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.house, color: Colors.black),
              label: 'Home',
            ),
            BottomNavigationBarItem(
                icon: FaIcon(FontAwesomeIcons.magnifyingGlass,
                    color: Colors.grey),
                label: 'Search'),
            BottomNavigationBarItem(
                icon: FaIcon(FontAwesomeIcons.squarePlus, color: Colors.grey),
                label: 'Add'),
            BottomNavigationBarItem(
                icon: FaIcon(FontAwesomeIcons.clapperboard, color: Colors.grey),
                label: 'Reels'),
            BottomNavigationBarItem(
                icon: FaIcon(FontAwesomeIcons.user, color: Colors.grey),
                label: 'Profile'),
          ],
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
        ),
      ),
    );
  }

  Padding storyProfile(int index) {
    CircleAvatar story = CircleAvatar(
      radius: 35,
      backgroundImage: NetworkImage(
          'https://images.unsplash.com/photo-1511367461989-f85a21fda167?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D&w=1000&q=80'),
    );
    String name = "Name ${index + 1}";
    if (index == 0) {
      name = "Your Story";
      story = CircleAvatar(
        radius: 35,
        backgroundImage: NetworkImage(
            'https://images.unsplash.com/photo-1511367461989-f85a21fda167?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D&w=1000&q=80'),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(50, 50, 0, 0),
          child: CircleAvatar(
            radius: 10,
            backgroundColor: Colors.white,
            child: CircleAvatar(
                radius: 8,
                backgroundImage: NetworkImage(
                    'https://cdn0.iconfinder.com/data/icons/social-messaging-ui-color-shapes/128/add-circle-blue-512.png')),
          ),
        ),
      );
    }
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(2),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.pink, width: 2),
                borderRadius: BorderRadius.circular(50)),
            child: story,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 2.0),
            child: Text(name),
          ),
        ],
      ),
    );
  }
}
