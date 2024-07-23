import 'package:flutter/material.dart';

class TabBarExample extends StatefulWidget {
  const TabBarExample({super.key});
  
  @override
  State<StatefulWidget> createState() {
    return _tabBarState();
  }
  
}

class _tabBarState extends State {
  var selectedItem = '';
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, 
      child: Scaffold(
        appBar: AppBar(
          title: Text("AppMaking.bo"),
          backgroundColor: Colors.grey[300],
          centerTitle: true,
          actions: [
            IconButton(
              icon: const Icon(Icons.notifications),
              tooltip: "Mostrar snackbar",
              onPressed: (){
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Notificaciones")));
              },
            ),
            IconButton(onPressed: () => {}, icon: const Icon(Icons.call)),
            PopupMenuButton(
            onSelected: (value) {
              setState(() {
                selectedItem = value.toString();
              });
              print(value);
              Navigator.pushNamed(context, value.toString());
            },
            itemBuilder: (BuildContext bc) {
              return const [
                PopupMenuItem(value: '/home',child: Text("Home"),),
                PopupMenuItem(value: '/list',child: Text("Listas"),),
                PopupMenuItem(value: '/users',child: Text("Users API"),),
                PopupMenuItem(value: '/contact',child: Text("Contact"),),
                PopupMenuItem(value: '/bottomnav',child: Text("Bottom Nav"),),
              ];
            }
          )
          ],
          bottom: const TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.chat_bubble),
                text: "Chats",
              ),
              Tab(
                icon: Icon(Icons.video_call),
                text: "Calls",
              ),
              Tab(
                icon: Icon(Icons.settings),
                text: "Settings",
              ),
            ]
          ),
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
        body: const TabBarView(
          children: [
            Center(
              child: Text("Chats"),
            ),
            Center(
              child: Text("Calls"),
            ),
            Center(
              child: Text("Settings"),
            ),
          ]
        ),
      )
    );
  }

}