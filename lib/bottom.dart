import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  List<Widget> content = [];

  void add(BuildContext context) {
    content.add(Center(
      child: Text(
        "Home",
        style: Theme.of(context).textTheme.headline4,
      ),
    ));
    content.add(Center(
      child: Text(
        "Search",
        style: Theme.of(context).textTheme.headline4,
      ),
    ));
    content.add(Center(
      child: Text(
        "Bookmark",
        style: Theme.of(context).textTheme.headline4,
      ),
    ));
    content.add(Center(
      child: Text(
        "Settings",
        style: Theme.of(context).textTheme.headline4,
      ),
    ));
  }

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    add(context);
    return Scaffold(
      body: content.elementAt(selectedIndex),
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          indicatorColor: Colors.red,
          labelTextStyle: MaterialStateProperty.all(
            TextStyle(fontSize: 14.0),
          ),
        ),
        child: NavigationBar(
            labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
            height: 70,
            backgroundColor: Colors.redAccent.shade100,
            selectedIndex: selectedIndex,
            onDestinationSelected: (index) {
              setState(() {
                selectedIndex = index;
              });
            },
            destinations: const [
              NavigationDestination(
                icon: Icon(Icons.home_outlined),
                label: 'Home',
                selectedIcon: Icon(
                  Icons.home_filled,
                ),
              ),
              NavigationDestination(
                icon: Icon(Icons.email_outlined),
                label: 'Email',
                selectedIcon: Icon(Icons.email),
              ),
              NavigationDestination(
                icon: Icon(Icons.favorite_outline),
                label: 'Favorites',
                selectedIcon: Icon(
                  Icons.favorite,
                ),
              ),
              NavigationDestination(
                  icon: Icon(
                    Icons.settings_outlined,
                  ),
                  selectedIcon: Icon(Icons.settings),
                  label: 'Settings'),
            ]),
      ),
    );
  }
}
