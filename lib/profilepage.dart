import 'package:flutter/material.dart';
import 'package:project_1/widgets/input_field.dart';

class Profilepage extends StatefulWidget {
  const Profilepage({super.key});

  @override
  State<Profilepage> createState() => _ProfilepageState();
}

class _ProfilepageState extends State<Profilepage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passController = TextEditingController();

  String name = "";
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: SizedBox(
          height: 300,
          width: 300,
          child: Card(
            color: Colors.teal.shade300,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextFormField(
                      controller: nameController,
                      keyboardType: TextInputType.text,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Field is Empty";
                        } else if (!RegExp(
                          r'^[A-Za-z.]{3,}$',
                        ).hasMatch(value)) {
                          return 'Invalid Format !!';
                        }
                        return null;
                      },
                      decoration: const InputDecoration(
                        labelText: "Name",
                        hintText: "Enter Name",
                        prefixIcon: Icon(Icons.person),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    InputField(
                      controller: passController,
                      keyboardType: TextInputType.visiblePassword,
                      label: "Password",
                      icon: Icons.lock,
                      hint: "Enter Password",
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Field is Empty";
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          setState(() {
                            name = nameController.text;
                          });
                        }
                      },
                      child: const Text("Submit"),
                    ),
                    const SizedBox(height: 20),
                    Text("Name is: $name"),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// class Profilepage extends StatefulWidget {
//   const Profilepage({super.key});

//   @override
//   State<Profilepage> createState() => _ProfilepageState();
// }

// class _ProfilepageState extends State<Profilepage> {
//   TextEditingController nameController = TextEditingController();
//   TextEditingController passwordController = TextEditingController();

//   String name = "";
//   String password = "";

//   final _formKey = GlobalKey<FormState>();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Profile"), backgroundColor: Colors.teal),
//       body: Center(
//         child: SizedBox(
//           height: 350,
//           width: 300,
//           child: Card(
//             color: Colors.teal.shade300,
//             child: Padding(
//               padding: const EdgeInsets.all(20.0),
//               child: Form(
//                 key: _formKey,
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     // Name field
//                     TextFormField(
//                       controller: nameController,
//                       keyboardType: TextInputType.text,
//                       validator: (value) {
//                         if (value!.isEmpty) {
//                           return "Field is Empty";
//                         }
//                         return null;
//                       },
//                       decoration: InputDecoration(
//                         labelText: "Name",
//                         hintText: "Enter Name",
//                         prefixIcon: Icon(Icons.person),
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.all(Radius.circular(50)),
//                         ),
//                       ),
//                     ),

//                     SizedBox(height: 20),

//                     // Password field
//                     TextFormField(
//                       controller: passwordController,
//                       keyboardType: TextInputType.visiblePassword,
//                       obscureText: true,
//                       validator: (value) {
//                         if (value!.isEmpty) {
//                           return "Field is Empty";
//                         }
//                         return null;
//                       },
//                       decoration: InputDecoration(
//                         labelText: "Password",
//                         hintText: "Enter Password",
//                         prefixIcon: Icon(Icons.lock),
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.all(Radius.circular(50)),
//                         ),
//                       ),
//                     ),

//                     SizedBox(height: 20),

//                     ElevatedButton(
//                       onPressed: () {
//                         setState(() {
//                           if (_formKey.currentState!.validate()) {
//                             name = nameController.text;
//                             password = passwordController.text;
//                           }
//                         });
//                       },
//                       child: Text("Submit"),
//                     ),

//                     SizedBox(height: 20),

//                     Text("Name is: $name"),
//                     Text("Password is: $password"),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
