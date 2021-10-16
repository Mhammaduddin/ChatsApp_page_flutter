import 'package:flutter/material.dart';

void main() => runApp(const MyApp());


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,	
      home: Scaffold(
	appbar: AppBar(
	litle: Text('WhatsApp'),
	actions:[Icon(Icons.search)],
        shodowColor: Colors.green[300],
	bottom: new TabBar(
        controller: controller,
	color: Colors.green[300],
        tabs: <Tab>[
          new Tab('Chats',icon: new Icon(Icons.arrow_forward)),
          new Tab('Status', icon: new Icon(Icons.arrow_downward)),
          new Tab('Calls',icon: new Icon(Icons.arrow_back)),
        ]
      )
),
),
	body: Container(
	child: Column(
	children:[
	chats("hammad","kaha ho bhai"),
	chats("ammar","oye"),
	chats("ali","hello"),
],
),
),
	
	
),
    );
  }
}

Widget chats( string name, string text){
return ListTile(
tileColor: Colors.amber[50],
leading: CircleAvatar(
backgroundColor: Colors.blueGrey,radius:25,
),
title: Text(name),
subtitle: Text(text),
trailing: Text("9:55"),
)}