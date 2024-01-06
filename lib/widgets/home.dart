import 'package:flutter/material.dart';

import 'detail.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _tasks =[
    {
      "name":"Fix bugs",
      "description":"Fix Bug related to UI",
      "date":"1/1/2024"
    },
    {
      "name":"Fix bugs",
      "description":"Fix Bug related to UI",
      "date":"1/1/2024"
    },
    {
      "name":"Fix bugs",
      "description":"Fix Bug related to UI",
      "date":"1/1/2024"
    },
    {
      "name":"Fix bugs",
      "description":"Fix Bug related to UI",
      "date":"1/1/2024"
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("List to do"),),
      body: ListView.builder(
          itemCount: _tasks.length,
          itemBuilder: (context, index){
        return Card(
          child: ListTile(
            title: Text(_tasks[index]["name"]!),
            subtitle: Text(_tasks[index]["date"]!),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailPage()));
            },
          ),
        );
      }),
    );
  }
}
