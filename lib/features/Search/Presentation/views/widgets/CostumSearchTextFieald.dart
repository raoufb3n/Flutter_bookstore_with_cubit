import 'package:bookapp/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class CustomSearchTextFieald extends StatelessWidget {
  const CustomSearchTextFieald({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          suffixIconColor: Colors.white,
          focusColor: Color(0xffB030B0),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(13),
              borderSide: BorderSide(color: Color(0xffB030B0))),
          filled: true,
          fillColor: Color(0xff202060),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(13),
            borderSide: BorderSide(color: Color(0xff202060)),
          ),
          hintText: 'Search',
          hintStyle: Styles.labelText,
          suffixIcon: IconButton(
              splashColor: Colors.white.withOpacity(0),
              onPressed: () {},
              icon: PhosphorIcon(
                PhosphorIcons.bold.magnifyingGlass,
                size: 24,
              ))),
    );
  }
}
