import 'package:flutter/material.dart';
import 'model.dart';

import 'package:flutter/material.dart';

class Test10 extends StatelessWidget {
  const Test10({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: Text("Basic Test", style: TextStyle(fontSize: 24),),
        elevation: 0,
      ),
      body: QuestionWidget(),
    );
  }
}

class QuestionWidget extends StatefulWidget {
  const QuestionWidget({Key? key}) : super(key: key);

  @override
  State<QuestionWidget> createState() => _QuestionWidgetState();
}

class _QuestionWidgetState extends State<QuestionWidget> {
  late PageController _controller;
  int _questionNumber = 1;
  int _score = 0;
  bool _isLocked = false;

  @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const SizedBox(
              height: 32,
            ),
            Text(
              "Question  $_questionNumber/${questions.length}",
              style: TextStyle(fontSize: 20),
            ),
            const Divider(
              thickness: 1,
              color: Colors.grey,
            ),
            Expanded(
              child: PageView.builder(
                itemCount: questions.length,
                controller: _controller,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  final _question = questions[index];
                  return buildQuestion(_question);
                },
              ),
            ),
            _isLocked ? buildElevatedButton() : const SizedBox.shrink(),
            const SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }

  Column buildQuestion(Question10 question) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 32,
        ),
        Center(
          child: Text(
            question.text,
            style: const TextStyle(fontSize: 25),
          ),
        ),
        const SizedBox(
          height: 45,
        ),
        Expanded(
            child: OptionsWidget(
          question: question,
          onClickedOption: (option) {
            if (question.isLocked) {
              return;
            } else {
              setState(() {
                question.isLocked = true;
                question.selectedOption = option;
              });
              _isLocked = question.isLocked;
              if (question.selectedOption!.isCorrect) {
                _score++;
              }
            }
          },
        ))
      ],
    );
  }

  ElevatedButton buildElevatedButton() {
    double Width = MediaQuery.of(context).size.width / 100;
    double Height = MediaQuery.of(context).size.height / 100;
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: Size(Width * 40, 60),
        primary: Colors.lightBlueAccent,
        textStyle: const TextStyle(
            color: Colors.white, fontSize: 20, fontStyle: FontStyle.normal),
      ),
      onPressed: () {
        if (_questionNumber < questions.length) {
          _controller.nextPage(
            duration: const Duration(milliseconds: 250),
            curve: Curves.easeInExpo,
          );
          setState(() {
            _questionNumber++;
            _isLocked = false;
          });
        } else {
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) => ResultPage(score: _score)));
        }
      },
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          
          Text(_questionNumber < questions.length
              ? 'Next'
              : 'Result'),
              SizedBox(width: Width *2,),
              Icon(Icons.forward),
        ],
      ),
    );
  }
}

class OptionsWidget extends StatelessWidget {
  final Question10 question;
  final ValueChanged<Option> onClickedOption;

  const OptionsWidget(
      {Key? key, required this.question, required this.onClickedOption})
      : super(key: key);

  @override
  Widget build(BuildContext context) => SingleChildScrollView(
          child: Column(
        children: question.options
            .map((option) => buildOption(context, option))
            .toList(),
      ));

  Widget buildOption(BuildContext context, Option option) {
    final color = getColorForOption(option, question);

    double Width = MediaQuery.of(context).size.width / 100;
    double Height = MediaQuery.of(context).size.height / 100;

    return GestureDetector(
      onTap: () => onClickedOption(option),
      child: Container(
        height: Height * 7,
        width: Width * 90,
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: color),
        ),
        margin: const EdgeInsets.symmetric(vertical: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              width: Width * 75,
              child: Center(
                child: Text(
                  "${option.answer}",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            // SizedBox(
            //   width: Width * 30,
            // ),
            Container(
              width: Width * 5,
              child: Center(child: getIconForOption(option, question)))
          ],
        ),
      ),
    );
  }

  Color getColorForOption(Option option, Question10 question) {
    final isSelected = option == question.selectedOption;
    if (question.isLocked) {
      if (isSelected) {
        return option.isCorrect ? Colors.green : Colors.red;
      } else if (option.isCorrect) {
        return Colors.green;
      }
    }
    return Colors.grey.shade300;
  }

  Widget getIconForOption(Option option, Question10 question) {
    final isSelected = option == question.selectedOption;
    if (question.isLocked) {
      if (isSelected) {
        return option.isCorrect
            ? const Icon(
                Icons.check_circle,
                color: Colors.green,
              )
            : const Icon(
                Icons.cancel,
                color: Colors.red,
              );
      } else if (option.isCorrect) {
        return const Icon(
          Icons.check_circle,
          color: Colors.green,
        );
      }
    }
    return const SizedBox.shrink();
  }
}

class ResultPage extends StatelessWidget {
  const ResultPage({Key? key, required this.score}) : super(key: key);

  final int score;

  @override
  Widget build(BuildContext context) {
    double Width = MediaQuery.of(context).size.width / 100;
    double Height = MediaQuery.of(context).size.height / 100;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
              height: Height * 10 ,
            ),
          Center(
            child: Image.asset(
                'assets/test.gif',
                height: Height * 50,
                width: Width * 90,
              ),
          ),
          Text('Quiz Results  $score/${questions.length}', style: TextStyle(fontSize: 24),),
        ],
      ),
    );
  }
}