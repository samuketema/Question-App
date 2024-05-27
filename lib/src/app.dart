import 'package:flutter/material.dart';

class MyApp extends StatefulWidget{
  
  _appState createState() => _appState();  
}

class  _appState extends State<MyApp>{
  build(BuildContext context){
    return MaterialApp(
      title: 'Question App'
      home:Scaffold(
        appBar: AppBar(
          title:Text("Questions"),
          centerTitle: true,
          toolbarHeight: 55.9,
        ),
        body: Column(
          children: [
            
          ],
        ),
      )
    );
  }

}