import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:program_learning/esasy/basic/basic_model.dart';

import '../../screens/details_screen.dart';
import 'ex_model.dart';

class ExDetails extends StatelessWidget {
  final ExModel ex;

  ExDetails(
    this.ex
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
                              'Examples',
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
              Image.asset(ex.image),
            ],
          ),
        ),
      ),
    );
  }
}