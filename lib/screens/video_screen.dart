import 'package:flutter/material.dart';

import '../constants/color.dart';
import '../esasy/basic/basic_details.dart';
import '../video/model.dart';
import '../video/video_details.dart';

class VideoScreen extends StatelessWidget {
  const VideoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double SWidth = MediaQuery.of(context).size.width / 100;
    double SHeight = MediaQuery.of(context).size.height / 100;
    return Scaffold(
        body: Column(
      children: [
        SizedBox(height: 25,),
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
                    "Program,\nvideo",
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
        Expanded(
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: listVideo.length,
                    itemBuilder: (context, index) {
                      VideoModel basic = listVideo[index];
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => VideoApp(basic)),
                          );
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Card(
                            child: ListTile(
                                title: Text(basic.title),
                                leading: CircleAvatar(
                                    radius: 20,
                                    backgroundColor: kPrimaryColor,
                                    child: Text("${index + 1}"))),
                          ),
                        ),
                      );
                    }),
              )
      ],
    ));
  }
}
