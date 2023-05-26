import 'package:flutter/cupertino.dart';

class Question10 {
  final String text;
  final List<Option> options;
  bool isLocked;
  Option? selectedOption;

  Question10({
    required this.text,
    required this.options,
    this.isLocked = false,
    this.selectedOption,
  });
}

class Option  {
  final String answer;
  final bool isCorrect;

  const Option({
    required this.answer,
    required this.isCorrect,
  });
}


final questions = [
  Question10(text: 'What is a correct syntax to output "Hello World" in C#?', 
    options: [
       Option(answer: "print ('Hello World');", isCorrect: false),
       Option(answer: "Console.WriteLine('Hello World');  ", isCorrect: true),
       Option(answer: "System.out.println('Hello World');", isCorrect: false),
    ]),
    Question10(text: 'C# is an alias of C++', 
    options: [
       Option(answer: "True", isCorrect: false),
       Option(answer: "False", isCorrect: true),
    ]),
    Question10(text: 'How do you insert COMMENTS in C# code?', 
    options: [
       Option(answer: "// This is a comment", isCorrect: true),
       Option(answer: "/* This is a comment", isCorrect: false),
       Option(answer: "# This is a comment", isCorrect: false),
    ]),
    Question10(text: 'Which data type is used to create a variable that should store text?', 
    options: [
       Option(answer: "myString", isCorrect: false),
       Option(answer: "string", isCorrect: true),
       Option(answer: "str", isCorrect: false),
    ]),
    Question10(text: 'How do you create a variable with the numeric value 5?', 
    options: [
       Option(answer: "int x = 5;  ", isCorrect: true),
       Option(answer: "double x = 5;", isCorrect: false),
       Option(answer: "x = 5;", isCorrect: false),
    ]),
    Question10(text: 'How do you create a variable with the floating number 2.8?', 
    options: [
       Option(answer: "int x = 2.8; ", isCorrect: false),
       Option(answer: "byte x = 2.8", isCorrect: false),
       Option(answer: "double x = 2.8D;  ", isCorrect: true),
    ]),
    Question10(text: 'Which property can be used to find the length of a string?', 
    options: [
       Option(answer: "length", isCorrect: false),
       Option(answer: "Length  ", isCorrect: true),
       Option(answer: "getLength()", isCorrect: false),
    ]),
    Question10(text: 'Näçe sany özara güýçler bar? Haýsylar?', 
    options: [
       Option(answer: "2", isCorrect: true),
       Option(answer: "3", isCorrect: false),
       Option(answer: "5", isCorrect: false),
    ]),
    Question10(text: 'Which operator is used to add together two values?', 
    options: [
       Option(answer: "The + sign  ", isCorrect: true),
       Option(answer: "The * sign  ", isCorrect: false),
       Option(answer: "The & sign", isCorrect: false),
    ]),
    Question10(text: 'The value of a string variable can be surrounded by single quotes.', 
    options: [
       Option(answer: "True", isCorrect: false),
       Option(answer: "False", isCorrect: true),
    ]),
];