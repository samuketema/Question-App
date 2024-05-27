import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyApp extends StatefulWidget{
  
  _appState createState() => _appState();  
}

class  _appState extends State<MyApp>{
  List <String> questions = [
    'The capital city of Ethiopia is Addis Abeba',
    'Ethiopia is one of the smallest country in Africa Continent',
    'The prime minister of Ethiopia is Abiy Ahmed Ali'
  ];
  List<bool> answers =[true,false,true];
  int questionNumber = 0;
  build(BuildContext context){
    return MaterialApp(
      title: 'Question App',
      home:Scaffold(
        appBar: AppBar(
          title:Text("Questions"),
          centerTitle: true,
          toolbarHeight: 55.9,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 5,
              child: Center(child: Text(questions[questionNumber]))
            ),
            Expanded(
              child:TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white
                ),
                onPressed: (){
                late  bool ans;
                  setState((){
                     ans = answers[questionNumber];
                  });
                  if (ans){
                    print("Correct Answer");
                  }else{
                    print('Wrong Answer');
                  }
                },
                child: Text('True'),
                ),
              ),
            Expanded(
              child:TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white
                ),
                onPressed: (){
                  late bool ans;
                  setState((){
                    ans = answers[questionNumber];
                  });
                  if(!ans){
                    print('Correct Answer');
                  }else{
                    print('Incorrect Answer');
                  }
                },
                child: Text('False'),
                ),
              )
            
            
          ],
        ),
      )
    );
  }



}