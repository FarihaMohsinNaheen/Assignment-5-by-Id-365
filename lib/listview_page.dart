import 'package:flutter/material.dart';
import 'package:project_1/singleitem_page.dart';

class ListviewPage extends StatelessWidget {
  const ListviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    var myItems = [
      {
        "img":
            "https://plus.unsplash.com/premium_photo-1664474619075-644dd191935f?q=80&w=2069&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        "title": "mypic",
      },
      {
        "img":
            "https://images.unsplash.com/photo-1526779259212-939e64788e3c?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8ZnJlZSUyMGltYWdlc3xlbnwwfHwwfHx8MA%3D%3D",
        "title": "nature",
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text("ListView page"),
        backgroundColor: Colors.teal,
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: myItems.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SingleitemPage(
                    img: myItems[index]['img']!,
                    title: myItems[index]['title']!,
                  ),
                ),
              );
            },
            child: Card(
              child: Row(
                children: [
                  Image.network(
                    myItems[index]['img']!,
                    height: 500,
                    width: 500,
                  ),
                  Text(myItems[index]['title']!),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

// import 'package:flutter/material.dart';

// class ListviewPage extends StatelessWidget {
//   const ListviewPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     var myItems = [
//       {
//         "img":
//             "https://plus.unsplash.com/premium_photo-1664474619075-644dd191935f?q=80&w=2069&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
//         "title": "mypic",
//       },
//       {
//         "img":
//             "https://images.unsplash.com/photo-1526779259212-939e64788e3c?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8ZnJlZSUyMGltYWdlc3xlbnwwfHwwfHx8MA%3D%3D",
//         "title": "nature",
//       },
//     ];

//     return Scaffold(
//       appBar: AppBar(
//         title: Text("ListView page"),
//         backgroundColor: Colors.teal,
//       ),
//       body: ListView.builder(
//         itemCount: myItems.length,
//         itemBuilder: (context, index) {
//           return Card(
//             child: Row(
//               children: [
//                 Image.network(myItems[index]['img']!, height: 500, width: 500),
//                 Text(myItems[index]['title']!),
//               ],
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
