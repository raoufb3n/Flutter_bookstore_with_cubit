import 'package:bookapp/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class RatingWidget extends StatelessWidget {
  const RatingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 145,
      height: 23,
      child: Row(
        children: [
          ...List.generate(
              5,
              (index) => PhosphorIcon(
                    PhosphorIcons.fill.star,
                    color: Color(0xffFFC41F),
                    size: 16,
                  )),
          const Spacer(),
          Row(
            children: [
              Text(
                '5.0',
                style: Styles.bodyMeduim,
              ),
              Text(
                '/5.0',
                style: Styles.bodyMeduim.copyWith(color: Colors.grey),
              ),
            ],
          )
        ],
      ),
    );
  }
}
