import 'package:bookapp/features/splash/presentation/views/SplashView.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

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
        ),
        
      
      home:const SplashView(),
    );
  }
}




