import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../screens/details_screen.dart';
import 'control_model.dart';

class ControlDetails extends StatelessWidget {
  final ControlModel control;

  ControlDetails(
    this.control
    );


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
                              'Control Statement',
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
              Image.asset(control.image),
              Image.asset(control.image2)
            ],
          ),
        ),
      ),
    );
  }
}