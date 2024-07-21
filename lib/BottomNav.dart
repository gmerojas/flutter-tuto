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
      appBar: AppBar(
        title: const Text("Flutter App"),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            tooltip: "Mostrar snackbar",
            onPressed: (){
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Notificaciones")));
            },
          ),
          IconButton(onPressed: () => {}, icon: const Icon(Icons.more_vert))
        ],
        backgroundColor: Colors.amber,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text("AppMaking.co"), 
              accountEmail: Text("sundar@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage("https://img.freepik.com/psd-gratis/ilustracion-3d-avatar-o-perfil-humano_23-2150671122.jpg?size=626&ext=jpg"),
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQXRQcRh2NyQi12rkxOjpsVDWVMWqsqVvhesQ&s"),
                  fit: BoxFit.fill,
                )
              ),
              otherAccountsPictures: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  backgroundImage: NetworkImage("https://img.freepik.com/psd-gratis/3d-ilustracion-persona-gafas-sol_23-2149436188.jpg"),
                ),
                CircleAvatar(
                  backgroundColor: Colors.white,
                  backgroundImage: NetworkImage("https://static.vecteezy.com/system/resources/thumbnails/002/002/403/small/man-with-beard-avatar-character-isolated-icon-free-vector.jpg"),
                ),
              ],
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.account_box),
              title: Text("About"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.grid_3x3_outlined),
              title: Text("Products"),
              onTap: () => {},
            ),
            ListTile(
              leading: Icon(Icons.contact_mail),
              title: Text("Contact"),
              onTap: () => {},
            ),
          ],
        ),
      ),
      body: _pages[_selectedTab],
      bottomNavigationBar: Theme(
        data: ThemeData(
          canvasColor: Colors.blueGrey
        ), 
        child: BottomNavigationBar(
          currentIndex: _selectedTab,
          onTap: (index) => _changeTab(index),
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.grey,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "About"),
            BottomNavigationBarItem(icon: Icon(Icons.grid_3x3_outlined), label: "Product"),
            BottomNavigationBarItem(icon: Icon(Icons.contact_mail), label: "Contact"),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings"),
          ],
        ),
      ),
    );
  }

}