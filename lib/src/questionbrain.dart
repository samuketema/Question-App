import 'questionbank.dart';
class QuestionBrain{
  int questionNumber = 0;
   List<QuestionBank> questionBank =[
    QuestionBank(q: 'The capital city of Ethiopia is Addis Abeba' , a: true),
    QuestionBank(q: 'Ethiopia is one of the smallest country in Africa Continent', a: false),
    QuestionBank(q: 'The prime minister of Ethiopia is Abiy Ahmed Ali', a: true)
  ];

  String getQuestions(questionNumber){
    return questionBank[questionNumber].questionText;
  }
  bool getAnswers(questionNumber){
    return questionBank[questionNumber].answer;
  }

  
}