/**
 * Author: Shahbaj Jamil
 *profile: https://github.com/shahbajjamil
  */

import 'package:flutter/material.dart';

import '../utils/Question.dart';
import '../utils/Quiz.dart';

import '../UI/answer_button.dart';

import '../UI/question_text.dart';

import '../UI/correct_wrong_overlay.dart';

import './score_page.dart';

class QuizPage extends StatefulWidget {
  @override
  State createState() => new QuizPageState();
}

class QuizPageState extends State<QuizPage> {
  Question currentQuestion;
  Quiz quiz = new Quiz([
    new Question("Do you live in Earth?", true),
    new Question("Pizza is healthy?", false),
    new Question("Air has Weight?", true),
    new Question("your are Alien?", true),
    new Question(
        "If You Cut An Earthworm in Half, it Will Regenerate into Two Earthworms?",
        true),
    new Question("Flutter is a coding language?", false),
    new Question(
        "FACTS AND FIGURES: there are 86400 seconds in one day?", true),
    new Question(
        "SPELLING: The word BACKWARDS spelled backwards is SDRAWCKAB?", false),
    new Question("This sentence contains thirteen vowels?", false),
    new Question(
        "TYPING: You can type the word 'quirky' using only one row on a standard computer keyboard?",
        false),
    new Question("ROMAN NUMERALS: LVI ÷ VIII = VII?", true),
    new Question(
        "Jupiter makes up around 99.8% of the mass of the solar system?",
        false),
    new Question("No bird can fly backwards?", false),
    new Question("Do you have Brain? think and answer.", false),
  ]);
  String questionText;
  int questionNumber;
  bool isCorrect;
  bool overlayShouldVissible = false;

  @override
  void initState() {
    super.initState();
    currentQuestion = quiz.nextQuestion;
    questionText = currentQuestion.question;
    questionNumber = quiz.questionNumber;
  }

  void handleAnswer(bool answer) {
    isCorrect = (currentQuestion.answer == answer);
    quiz.answer(isCorrect);
    this.setState(() {
      overlayShouldVissible = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Stack(
      fit: StackFit.expand,
      children: <Widget>[
        new Column(
          //this is our main page
          children: <Widget>[
            new AnswerButton(
                true,
                () => handleAnswer(
                    true)), //calling another page & handleAnswer for ans
            new QuestionText(questionText, questionNumber),
            new AnswerButton(false, () => handleAnswer(false)),
          ],
        ),
        overlayShouldVissible == true
            ? new CorrectWrongOverlay(isCorrect, () {
                if (quiz.lenght == questionNumber) {
                  Navigator.of(context).pushAndRemoveUntil(
                      new MaterialPageRoute(
                          builder: (BuildContext context) =>
                              new ScorePage(quiz.score, quiz.lenght)),
                      (Route route) => route == null);
                  return;
                }
                currentQuestion = quiz.nextQuestion;
                this.setState(() {
                  overlayShouldVissible = false;
                  questionText = currentQuestion.question;
                  questionNumber = quiz.questionNumber;
                });
              })
            : new Container()
      ],
    );
  }
}
