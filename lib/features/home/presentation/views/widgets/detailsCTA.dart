import 'package:bookapp/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class DeatilsCta extends StatelessWidget {
  DeatilsCta({super.key, required this.labelText, required this.icon});
  String labelText;
  PhosphorIconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: Color(0xff202060), borderRadius: BorderRadius.circular(10)),
      width: 175,
      height: 46,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          PhosphorIcon(
            icon,
            size: 24,
          ),
          const SizedBox(
            width: 4,
          ),
          Text(
            labelText,
            style: Styles.bodyLarge,
          )
        ],
      ),
    );
  }
}
