import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
void main()=> runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  title: "Dialer App",
  home: HomePage(),
));
class HomePage extends StatefulWidget {
  

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var contactlist=["Puja","Mina","Rekhu"];
  var phonenumber=["9864839462","9848880231","9848997053"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFE21717),
        title: Text("Phone Dialer App"),

      ),
      body: ListView.builder(
        itemCount: contactlist.length,
        itemBuilder: (context,index)
        {
          return ListTile(
            leading: Icon(Icons.supervised_user_circle_rounded),
            title: Text(contactlist[index]),
            subtitle: Text(phonenumber[index]),
            trailing:IconButton(
              icon: Icon(Icons.call),
             onPressed: (){
               launch("tel://${phonenumber[index]}");
             },) 
            
          );
        }),
      
    );
  }
}
 