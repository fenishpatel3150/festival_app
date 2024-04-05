import 'package:festival_app/Screen/EditScreen/Editscreen.dart';
import 'package:festival_app/Screen/SecondScreen/Second_Screen.dart';
import 'package:festival_app/Screen/save/savescreen.dart';
import 'package:festival_app/Screen/share/sharescreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    SecondScreen(),
    Editscreen(),
    sharescreen(),
    savescreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: SafeArea(
        child: SizedBox(
          height: 90,
          width: MediaQuery.of(context).size.width,
          child: GNav(
            backgroundColor: Colors.black,
            tabBorderRadius: 20,
            rippleColor: Colors.white,
            hoverColor: Colors.white,
            gap: 10,
            activeColor: Colors.white,
            iconSize: 27,
            haptic: true,
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            duration: const Duration(milliseconds: 200),
            tabBackgroundColor: Colors.black,
            color: Colors.black,
            tabs: [
              GButton(
                icon: Icons.image,iconColor: Colors.white,
                text: 'Image',
              ),
              GButton(
                icon: Icons.text_fields,iconColor: Colors.white,
                text: 'Text',
                ),
              GButton(
                icon: Icons.share,iconColor: Colors.white,
                text: 'Share',
              ),

              GButton(
                icon: Icons.install_mobile,iconColor: Colors.white,
                text: 'Download',
              ),
            ],
            selectedIndex: _selectedIndex,
            onTabChange: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
          ),
        ),
      ),
    );
  }
}