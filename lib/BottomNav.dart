import 'package:flutter/material.dart';

class Bottomnav extends StatefulWidget {
  const Bottomnav({super.key});
  
  @override
  State<StatefulWidget> createState() {
    return _BottomnavState();
  }

}

class _BottomnavState extends State {
  int _selectedTab = 0;

  final List _pages = [
    const Center(child: Text("Home"),),
    const Center(child: Text("About"),),
    const Center(child: Text("Products"),),
    const Center(child: Text("Contact"),),
    const Center(child: Text("Settings"),),
  ];

  _changeTab(int index){
    setState(() {
      _selectedTab = index;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: _pages[_selectedTab],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTab,
        onTap: (index) => _changeTab(index),
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "About"),
          BottomNavigationBarItem(icon: Icon(Icons.grid_3x3_outlined), label: "Product"),
          BottomNavigationBarItem(icon: Icon(Icons.contact_mail), label: "Contact"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings"),
        ],
      ),
    );
  }

}