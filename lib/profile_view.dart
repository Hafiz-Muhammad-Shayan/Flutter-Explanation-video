import 'package:flutter/material.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
            children: [
              // Image.network(
              //     "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-SkOkBPUHy9tNLoFgp19Ckax6TFKHFwTN27K3JEtlfhap9bDe9PQ_ME8p&s=10",
              //     width: 200,
              // ),
              Image.asset("assets/images/BMW1.jpg"),

              Image.asset("assets/images/BMW2.webp"),
            ],
          )),
    );
  }
}


































// import 'package:flutter/material.dart';
//
// class ProfileView extends StatefulWidget {
//   const ProfileView({super.key});
//
//   @override
//   State<ProfileView> createState() => _ProfileViewState();
// }
//
// class _ProfileViewState extends State<ProfileView> {
//
//   List<String> friendList = ["Shayan", "Hasnain" , "Umer"];
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: Column(
//               children: [
//                 ListTile(
//                   tileColor: Colors.grey,
//                   title: Text(friendList[0]),
//                   trailing: IconButton(
//                       onPressed: (){
//                         showDialog(
//                             context: context,
//                             builder: (context){
//                               return AlertDialog(
//                                 title: Text("Update"),
//                               );
//                             });
//                       },
//                       icon: Icon(Icons.edit) ),
//                 ),
//                 SizedBox(
//                   height: 2,
//                 ),
//                 ListTile(
//                   tileColor: Colors.grey,
//                   title: Text(friendList[1]),
//                   trailing: IconButton(
//                       onPressed: (){
//                         showDialog(
//                           barrierDismissible: false,
//                             context: context,
//                             builder: (context){
//                               return AlertDialog(
//                                 title: Text("Update Value"),
//                                 content: TextField(
//                                   controller: updateItemController,
//                                 ),
//                                 actions: [
//                                   ElevatedButton(onPressed: (){
//                                     setState(() {
//                                       friendList[index] = updateItemController.text;
//                                     });
//                                   },
//                                       child: Text("Update")),
//                                 ],
//                               );
//                             });
//                       },
//                       icon: Icon(Icons.edit) ),
//                 ),
//      
//                 SizedBox(
//                   height: 2,
//                 ),
//                 ListTile(
//                   tileColor: Colors.grey,
//                   title: Text(friendList[2]),
//                   trailing: IconButton(
//                       onPressed: (){
//                         showDialog(
//                             context: context,
//                             builder: (context){
//                               return AlertDialog(
//                                 title: Text("Update"),
//                               );
//                             });
//                       },
//                       icon: Icon(Icons.edit) ),
//                 ),
//      
//      
//               ],
//         ),
//       ),
//     );
//   }
// }
