import 'package:flutter/material.dart';
import 'package:project_1/profilepage.dart';

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
      body: SingleChildScrollView(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/Flutter-Logo-Small.png",
              height: 200,
              width: 200,
            ),
            Text(
              "WELCOME TO MY HOMEPAGE",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25,
                color: Colors.teal.shade800,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return Profilepage();
                          },
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.teal.shade600,
                      foregroundColor: Colors.white,
                      fixedSize: Size(150, 30),
                    ),
                    child: Text("Profile Page"),
                  ),
                ),
                OutlinedButton(onPressed: () {}, child: Text("Outlined")),
                SizedBox(width: 20),
                TextButton(onPressed: () {}, child: Text("hello")),
              ],
            ),
            SizedBox(
              height: 200,
              width: 200,
              child: Card(
                color: Colors.tealAccent,
                child: Center(
                  child: Text("Card", style: TextStyle(color: Colors.black87)),
                ),
              ),
            ),
            Container(
              height: 300,
              width: 300,
              padding: EdgeInsets.fromLTRB(20, 30, 40, 50),
              margin: EdgeInsets.all(20),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.teal,
                border: Border.all(color: Colors.teal.shade900, width: 5),
                borderRadius: BorderRadius.all(Radius.circular(20)),
                // shape: BoxShape.circle,
              ),
              child: Center(child: Text("Container")),
            ),
          ],
        ),
      ),
    );
  }
}
