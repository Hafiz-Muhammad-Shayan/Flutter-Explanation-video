import 'package:flutter/material.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  List<String> friendList = ["Shayan", "Hasnain" , "Umer"];
  TextEditingController friendListController = TextEditingController();
  TextEditingController updateItemController = TextEditingController();

  updateItem(index){
    updateItemController.text = friendList[index];
    showDialog(
      // barrierDismissible: false,
        context: context,
        builder: (context){
          return AlertDialog(
            title: Text("Update Value"),
            content: TextField(
              controller: updateItemController,
            ),
            actions: [
              ElevatedButton(
                  onPressed: (){
                    setState(() {
                      friendList[index] = updateItemController.text;

                    });
                    updateItemController.clear();
                    Navigator.pop(context);
                  },
                  child: Text("Update")),
            ],
          );
        });
  }
  addItem(){
    setState(() {
      friendList.add("value");
    });
  }
  removeItem({meraBanayahuaApnaParameterJoValuePassKarega}){
    setState(() {
      friendList.removeAt(meraBanayahuaApnaParameterJoValuePassKarega);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          controller: friendListController,
        ),
        actions: [
          ElevatedButton(onPressed: (){
            setState(() {
              friendList.add(friendListController.text);
              friendListController.clear();
            });
          },
              child: const Text("Add Item"),
          ),
        ],
      ),
      body: SafeArea(
          child: ListView.builder(
            // shrinkWrap: true,
            // physics: NeverScrollableScrollPhysics(),
            itemCount: friendList.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.only(bottom: 2),
                  child: ListTile(
                    tileColor: Colors.grey,
                    title: Text(friendList[index]),
                    trailing: Wrap(
                      children: [
                        IconButton(
                            onPressed: (){
                              updateItem(index);
                            },
                            icon: const Icon(Icons.edit)),
                        IconButton(
                            onPressed: (){
                              removeItem(meraBanayahuaApnaParameterJoValuePassKarega: index);
                            },
                            icon: const Icon(Icons.delete)),
                      ],
                    ),
                  ),
                );
              },
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
