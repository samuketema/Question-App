import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:question_app/src/questionbank.dart';
import 'questionbrain.dart';

class MyApp extends StatefulWidget{
  
  _appState createState() => _appState();  
}

class  _appState extends State<MyApp>{
QuestionBrain question = new QuestionBrain();

void checkAnswer(bool userAnswer){
  bool correctAnswer = question.getAnswers(question.questionNumber);
                  setState((){ 
                     if (question.questionBank.length -1 > question.questionNumber){
                     question.questionNumber++;}
                  });
                  if (userAnswer == correctAnswer){
                    print("Correct Answer");
                  }else{
                    print('Wrong Answer');
                  }
}
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
              child: Center(child: Text(question.getQuestions(question.questionNumber)))
            ),
            Expanded(
              child:TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white
                ),
                onPressed: (){
                checkAnswer(true);
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
                 checkAnswer(false);
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