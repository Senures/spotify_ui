
import 'package:flutter/material.dart';
import 'package:spotify_ui/pages/book_page.dart';
import 'package:spotify_ui/pages/home_page.dart';
import 'package:spotify_ui/pages/search_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  final pages = [
    const HomePage(),
    const SearchPage(),
    const BookPage(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;

      for (var e in icons) {
        if (e.iconPath.contains(icons[index].iconPath)) {
          e.iconStatus = IconStatus.isSelected;
        } else {
          e.iconStatus = IconStatus.isNotSelected;
        }
      }
    });
  }

  List<IconModel> icons = [
    IconModel("assets/images/Vector.png", IconStatus.isSelected),
    IconModel("assets/images/two.png", IconStatus.isNotSelected),
    IconModel("assets/images/three.png", IconStatus.isNotSelected),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        selectedItemColor: const Color(0xff1ED760),
        onTap: _onItemTapped,
        backgroundColor: Colors.black,
        items: List.generate(
            icons.length,
            (index) => BottomNavigationBarItem(
                icon: Image.asset(
                  icons[index].iconPath,
                  color: icons[index].iconStatus == IconStatus.isSelected
                      ? const Color(0xff1ED760)
                      : Colors.white,
                ),
                label: "")),
      ),
    );
  }
}

enum IconStatus { isSelected, isNotSelected }

class IconModel {
  String iconPath;
  IconStatus iconStatus;

  IconModel(this.iconPath, this.iconStatus);
}
