import 'package:flutter/material.dart';

class SingleitemPage extends StatelessWidget {
  final img, title;
  const SingleitemPage({super.key, required this.img, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Single Item Page"),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: SizedBox(
          height: 400,
          width: 400,
          child: Card(
            child: Column(
              children: [
                Image.network(img, height: 250, width: 250),
                Text(title),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
