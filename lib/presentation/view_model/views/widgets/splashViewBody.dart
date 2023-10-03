import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child:
        Container(
          height: 80,
           child: Image.asset('assets/images/Logo.png')
           ),
    );
  }
}
