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
  
    Question10(text: 'How do you call a method in C#?', 
    options: [
       Option(answer: "MyMethod;  ", isCorrect: false),
       Option(answer: "myMethod[];", isCorrect: false),
       Option(answer: "MyMethod();  ", isCorrect: true),
    ]),
    Question10(text: 'Which keyword is used to create a class in C#?', 
    options: [
       Option(answer: "class()  ", isCorrect: false),
       Option(answer: "class", isCorrect: true),
       Option(answer: "MyClass", isCorrect: false),
    ]),
    Question10(text: 'In C#, it is possible to inherit fields and methods from one class to another.', 
    options: [
       Option(answer: "True", isCorrect: true),
       Option(answer: "False", isCorrect: false),
    ]),
    Question10(text: "What is the name of the 'special' class that represents a group of constants?", 
    options: [
       Option(answer: "enum", isCorrect: true),
       Option(answer: "void", isCorrect: false),
       Option(answer: "special", isCorrect: false),
    ]),
    Question10(text: 'Which operator is used to multiply numbers?', 
    options: [
       Option(answer: "%", isCorrect: false),
       Option(answer: "#", isCorrect: false),
       Option(answer: "*", isCorrect: true),
    ]),
    Question10(text: 'Which operator can be used to compare two values?', 
    options: [
       Option(answer: "=", isCorrect: false),
       Option(answer: "==", isCorrect: true),
       Option(answer: "<>", isCorrect: false),
    ]),
    Question10(text: 'To declare an array in C#, define the variable type with:', 
    options: [
       Option(answer: "{}", isCorrect: false),
       Option(answer: "()", isCorrect: false),
       Option(answer: "[]", isCorrect: true),
    ]),
    Question10(text: 'Array indexes start with:', 
    options: [
       Option(answer: "0", isCorrect: true),
       Option(answer: "1", isCorrect: false),
    ]),
    Question10(text: 'How do you create a method in C#?', 
    options: [
       Option(answer: "myMethod[]", isCorrect: false),
       Option(answer: "MyMethod()", isCorrect: true),
       Option(answer: "(MyMethod)", isCorrect: false),
    ]),
    Question10(text: 'F=4πI bu formula nämäniň formulasy?', 
    options: [
       Option(answer: "Ýagtylygyň akymynyň", isCorrect: true),
       Option(answer: "Ýagtylygyň güýjiniň", isCorrect: false),
       Option(answer: "Ýagtylygyn tizliginiň", isCorrect: false),
    ]),
];