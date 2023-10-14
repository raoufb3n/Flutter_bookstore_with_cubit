import 'package:flutter/material.dart';

class CustomListViewItem extends StatelessWidget {
  CustomListViewItem({super.key, required this.url});
  final String url;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.8 / 4,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(fit: BoxFit.fill, image: NetworkImage(url))),
      ),
    );
  }
}
