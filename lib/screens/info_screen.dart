import 'package:flutter/material.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double SWidth = MediaQuery.of(context).size.width / 100;
    double SHeight = MediaQuery.of(context).size.height / 100;
    return Scaffold(
      body: ListView(children: [
        Container(
          padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
          height: 200,
          width: double.infinity,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: [0.1, 0.5],
              colors: [
                Color(0xff886ff2),
                Color(0xff6849ef),
              ],
            ),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Program,\ninfo",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Image.asset(
                      'assets/icons/comp.png',
                      height: SHeight * 15,
                      width: SWidth * 40,
                    ),
                  ),
                ],
              ),
               SizedBox(
                height: 20,
              ),
              
            ],
          ),
        ),
        SizedBox(
                height: SHeight * 20,
              ),
        Center(child: Text("Created by: Bayramova Merjen", style: TextStyle(fontSize: 20),)),
        SizedBox(
                height: SHeight * 2,
              ),
        Center(child: Text("Gmail: bayramovamerjen@gmail.com", style: TextStyle(fontSize: 20),))
      ],)
    );
  }
}