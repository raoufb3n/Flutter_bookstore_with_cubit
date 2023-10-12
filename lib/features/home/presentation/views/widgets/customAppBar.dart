import 'package:bookapp/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class CostumAppBar extends StatelessWidget {
  CostumAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 30),
      child: Row(
        children: [
          Row(
            children: [
              Image.asset(
                'assets/images/Logo.png',
                height: 40,
              ),
              const SizedBox(
                width: 6,
              ),
              Text(
                'Book Store',
                style: Styles.bodyLarge,
              )
            ],
          ),
          Spacer(),
          IconButton(
              onPressed: () {},
              icon: PhosphorIcon(
                PhosphorIcons.bold.magnifyingGlass,
                size: 27,
              )),
        ],
      ),
    );
  }
}
