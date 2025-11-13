import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: HomePage()));
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("HOMEPAGE"),
        backgroundColor: Colors.tealAccent.shade700,
        foregroundColor: Colors.white,
        leading: Icon(Icons.home),
        //actions: [
        // IconButton(onPressed: () {}, icon: const Icon(Icons.settings)),
        //IconButton(onPressed: () {}, icon: const Icon(Icons.person)),
        // ],
      ),
      endDrawer: NavigationDrawer(
        children: [
          DrawerHeader(
            child: UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.teal),
              accountName: Text("Fariha Naheen"),
              accountEmail: Text("fariha123@gmail.com"),
            ),
          ),
          ListTile(
            onTap: () {},
            leading: Icon(Icons.home),
            title: Text("Homepage"),
          ),
          Divider(),
          ListTile(
            onTap: () {},
            leading: Icon(Icons.person),
            title: Text("Profile"),
          ),
          Divider(),
          ListTile(
            onTap: () {},
            leading: Icon(Icons.settings),
            title: Text("Settings"),
          ),
          Divider(),
          ListTile(
            onTap: () {},
            leading: Icon(Icons.info),
            title: Text("About Us"),
          ),
          Divider(),
          ListTile(
            onTap: () {},
            leading: Icon(Icons.privacy_tip),
            title: Text("Privacy Policy"),
          ),
          Divider(),
          ListTile(
            onTap: () {},
            leading: Icon(Icons.help),
            title: Text("Help"),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.tealAccent.shade700,
        foregroundColor: Colors.white,
        shape: CircleBorder(),
        child: Icon(Icons.add),
      ),
      body: Center(
        child: Text(
          "WELCOME TO MY HOMEPAGE",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 25,
            color: Colors.teal.shade800,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
