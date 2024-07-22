import 'package:flutter/material.dart';
import 'package:my_app/country.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Screen'),
      ),
      body: _myListView(context)
    );
  }
}

Widget _buildItem(Country country) {
  return new ListTile(
    title: new Text(country.name),
    subtitle: new Text('Capital: ${country.capital}'),
    leading: new Icon(Icons.map),
    onTap: () => print(country.name),
  );
}

Widget _myListView(BuildContext context) {
  return ListView(
        children: countries.map(_buildItem).toList(),
      );
}

/*Widget _myListView(BuildContext context) {
  return ListView.builder(
    itemBuilder: (context, index) {
      return ListTile(
        title: Text('row $index'),
      );
    },
  );
}*/

/*Widget _myListView(BuildContext context) {
  return ListView.separated(
    itemCount: 1000,
    itemBuilder: (context, index) {
      return ListTile(
        title: Text('row $index'),
      );
    },
    separatorBuilder: (context, index) {
      return Divider();
    },
  );
}*/

/*Widget _myListView(BuildContext context) {
  return ListView(
    children: <Widget>[
      ListTile(
        leading: Icon(Icons.wb_sunny),
        title: Text('Sun'),
      ),
      ListTile(
        leading: Icon(Icons.brightness_3),
        title: Text('Moon'),
      ),
      ListTile(
        leading: Icon(Icons.star),
        title: Text('Star'),
      ),
    ],
  );
}*/

/*Widget _myListView(BuildContext context) {
  return ListView(
    children: <Widget>[
      ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage('assets/sun.jpg'),
        ),
        title: Text('Sun'),
      ),
      ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage('assets/moon.jpg'),
        ),
        title: Text('Moon'),
      ),
      ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage('assets/stars.jpg'),
        ),
        title: Text('Star'),
      ),
    ],
  );
}*/