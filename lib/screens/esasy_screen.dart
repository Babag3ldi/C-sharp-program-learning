import 'package:flutter/material.dart';

import '../esasy/basic/basic_screen.dart';
import '../esasy/control/control_screen.dart';
import '../esasy/ex/ex_screen.dart';
import '../esasy/funct/fun_screen.dart';
import '../esasy/inter/inter_details.dart';
import '../esasy/obj/obj_screen.dart';
import 'course_screen.dart';

class EsasyScreen extends StatelessWidget {
  const EsasyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double SWidth = MediaQuery.of(context).size.width / 100;
    double SHeight = MediaQuery.of(context).size.height / 100;
    return ListView(
      children: [
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hello,\nGood Morning",
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
              const SizedBox(
                height: 20,
              ),
              // const SearchTextField()
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
          child: Text(
            "Categories",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
        SizedBox(
          height: SHeight * 2,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BasicScreen(),
                ),
              ),
              child: Container(
                width: SWidth * 42,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(.1),
                      blurRadius: 4.0,
                      spreadRadius: .05,
                    ), //BoxShadow
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: Image.asset(
                        'assets/images/basic.jpg',
                        height: SHeight * 17,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text('Basic Tutorial'),
                    // Text(
                    //   "${category.noOfCourses.toString()} courses",
                    //   style: Theme.of(context).textTheme.bodySmall,
                    // ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ControlScreen(),
                ),
              ),
              child: Container(
                width: SWidth * 42,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(.1),
                      blurRadius: 4.0,
                      spreadRadius: .05,
                    ), //BoxShadow
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: Image.asset(
                        'assets/images/control.jpg',
                        height: SHeight * 17,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text('Control Statement'),
                    // Text(
                    //   "${category.noOfCourses.toString()} courses",
                    //   style: Theme.of(context).textTheme.bodySmall,
                    // ),
                  ],
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: SHeight * 2,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FuncScreen(),
                ),
              ),
              child: Container(
                width: SWidth * 42,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(.1),
                      blurRadius: 4.0,
                      spreadRadius: .05,
                    ), //BoxShadow
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: Image.asset(
                        'assets/images/fun.jpg',
                        height: SHeight * 17,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text('Function & Arrays'),
                    // Text(
                    //   "${category.noOfCourses.toString()} courses",
                    //   style: Theme.of(context).textTheme.bodySmall,
                    // ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ObjScreen(),
                ),
              ),
              child: Container(
                width: SWidth * 42,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(.1),
                      blurRadius: 4.0,
                      spreadRadius: .05,
                    ), //BoxShadow
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: Image.asset(
                        'assets/images/obj.jpg',
                        height: SHeight * 17,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text('Object And Class'),
                    // Text(
                    //   "${category.noOfCourses.toString()} courses",
                    //   style: Theme.of(context).textTheme.bodySmall,
                    // ),
                  ],
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: SHeight * 2,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => InterDetails(),
                ),
              ),
              child: Container(
                width: SWidth * 42,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(.1),
                      blurRadius: 4.0,
                      spreadRadius: .05,
                    ), //BoxShadow
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: Image.asset(
                        'assets/images/inter.jpg',
                        height: SHeight * 17,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text('Interview'),
                    // Text(
                    //   "${category.noOfCourses.toString()} courses",
                    //   style: Theme.of(context).textTheme.bodySmall,
                    // ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ExScreen(),
                ),
              ),
              child: Container(
                width: SWidth * 42,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(.1),
                      blurRadius: 4.0,
                      spreadRadius: .05,
                    ), //BoxShadow
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: Image.asset(
                        'assets/images/ex.jpg',
                        height: SHeight * 17,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text('Examples'),
                    // Text(
                    //   "${category.noOfCourses.toString()} courses",
                    //   style: Theme.of(context).textTheme.bodySmall,
                    // ),
                  ],
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: SHeight * 2,
        ),
      ],
    );
  }
}
