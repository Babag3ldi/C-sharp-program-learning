import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../screens/details_screen.dart';
import 'fun_model.dart';

class FunctDetails extends StatelessWidget {
  final FunctModel listf;

  FunctDetails(
    this.listf
    );


  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          // appBar: AppBar(
          //   title: Text(Fun.title),
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
                  ),
              Image.asset(listf.image),
              Image.asset(listf.image2)
            ],
          ),
        ),
      ),
    );
  }
}