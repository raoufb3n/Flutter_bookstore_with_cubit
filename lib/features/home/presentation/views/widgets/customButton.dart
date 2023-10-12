import 'package:bookapp/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      height: 55,
      decoration: BoxDecoration(
        color: Color(0xffB030B0),
        borderRadius: BorderRadius.circular(13),
      ),
      child: Text(
        'Buy Now',
        style: Styles.buttonText,
      ),
    );
  }
}
