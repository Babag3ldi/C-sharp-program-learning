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
  Question10(text: 'Which of the following .NET components can be used to remove unused references from the managed heap?', 
    options: [
       Option(answer: "CLR", isCorrect: false),
       Option(answer: "Garbage Collector", isCorrect: true),
       Option(answer: "Class Loader", isCorrect: false),
    ]),
    Question10(text: 'Private members of base class cannot be accessed by derived class member functions or objects of derived class.', 
    options: [
       Option(answer: "False", isCorrect: false),
       Option(answer: "True", isCorrect: true),
    ]),
    Question10(text: 'Creating a derived class from a base class requires fundamental changes to the base class.', 
    options: [
       Option(answer: "False", isCorrect: true),
       Option(answer: "True", isCorrect: false),
    ]),
    Question10(text: 'Suppose on pushing a button an object is to be notified, but it is not known until runtime which object should be notified. Which of the following programming constructs should be used to implement this idea?', 
    options: [
       Option(answer: "Attribute", isCorrect: false),
       Option(answer: "Delegate", isCorrect: true),
       Option(answer: "Interface", isCorrect: false),
    ]),
    Question10(text: 'Which of the following CANNOT be a target for a custom attribute?', 
    options: [
       Option(answer: "Namespace", isCorrect: true),
       Option(answer: "Enum", isCorrect: false),
       Option(answer: "Event", isCorrect: false),
    ]),
    Question10(text: 'Which of the following CANNOT be used as an underlying datatype for an enum in C#.NET?', 
    options: [
       Option(answer: "byte", isCorrect: false),
       Option(answer: "short", isCorrect: false),
       Option(answer: "float", isCorrect: true),
    ]),
    Question10(text: 'Exceptions can be thrown even from a constructor, whereas error codes cannot be returned from a constructor.', 
    options: [
       Option(answer: "False", isCorrect: false),
       Option(answer: "True", isCorrect: true),
    ]),
    Question10(text: 'Which of the following statements is correct about Interfaces used in C#.NET?', 
    options: [
       Option(answer: "Interfaces can be inherited", isCorrect: true),
       Option(answer: "Object interface", isCorrect: false),
       Option(answer: "Object class", isCorrect: false),
    ]),
    Question10(text: 'Which of the following utilities can be used to compile managed assemblies into processor-specific native code?', 
    options: [
       Option(answer: "ngen", isCorrect: true),
       Option(answer: "gacutil", isCorrect: false),
       Option(answer: "dumpbin", isCorrect: false),
    ]),
    Question10(text: 'How can you prevent inheritance from a class in C#.NET ?  ', 
    options: [
       Option(answer: "shadows", isCorrect: false),
       Option(answer: "overloads", isCorrect: false),
       Option(answer: "sealed", isCorrect: true),
    ]),
];