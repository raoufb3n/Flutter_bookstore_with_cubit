import 'package:bookapp/features/splash/presentation/views/SplashView.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xff202040),
        primaryColor:Color(0xffB030B0),
        primaryColorDark: Color(0xff202060),
        textTheme: TextTheme(
          displayLarge: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 24,
            fontWeight: FontWeight.w700
          ),
          titleLarge: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 16,
            fontWeight: FontWeight.w700
          ),
          titleMedium: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 14,
            fontWeight: FontWeight.w500           
          ),          
          titleSmall: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 12,
            fontWeight: FontWeight.w500           
          ),
          bodyMedium: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 14,
                         
          )
          

        )
      ),
      home:const SplashView(),
    );
  }
}




