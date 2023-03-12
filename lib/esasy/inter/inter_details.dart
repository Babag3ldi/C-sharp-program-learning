import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:program_learning/esasy/basic/basic_model.dart';

import '../../screens/details_screen.dart';

class InterDetails extends StatelessWidget {
  // final BasicModel basic;

  // BasicDetails(
  //   this.basic
  //   );


  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          // appBar: AppBar(
          //   title: Text(basic.title),
          // ),
          body: ListView(
            children: [
              IntrinsicHeight(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
                      child: Stack(
                        children: [
                          Align(
                            child: Text(
                              'Interview',
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
                  ),
              Image.asset('assets/images/i1.jpg'),
              Image.asset('assets/images/i2.jpg'),
              Image.asset('assets/images/i3.jpg'),
            ],
          ),
        ),
      ),
    );
  }
}