import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../constants/color.dart';
import '../../screens/details_screen.dart';
import 'fun_details.dart';
import 'fun_model.dart';

class FuncScreen extends StatelessWidget {
  const FuncScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double SWidth = MediaQuery.of(context).size.width / 100;
    double SHeight = MediaQuery.of(context).size.height / 100;
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          bottom: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
            child: ListView(
              children: [
                IntrinsicHeight(
                  child: Stack(
                    children: [
                      Align(
                        child: Text(
                          'Function And Array',
                          style: Theme.of(context).textTheme.displayMedium,
                        ),
                      ),
                      Positioned(
                        left: 0,
                        child: CustomIconButton(
                          child: const Icon(Icons.arrow_back),
                          height: 35,
                          width: 35,
                          onTap: () => Navigator.pop(context),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Center(
                  child: Container(
                      height: SHeight * 30,
                      child: Image.asset('assets/images/fun.jpg')),
                ),
                ListView.builder(
                    //scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount: funList.length,
                    itemBuilder: (context, index) {
                      FunctModel listf = funList[index];
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FunctDetails(listf)),
                          );
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Card(
                            child: ListTile(
                                title: Text(listf.title),
                                leading: CircleAvatar(
                                  radius: 20,
                                  backgroundColor: kPrimaryColor,
                                  child: Text("${index+1}")
                                )),
                          ),
                        ),
                      );
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
