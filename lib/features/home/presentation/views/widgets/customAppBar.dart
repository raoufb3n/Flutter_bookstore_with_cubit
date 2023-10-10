import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class CostumAppBar extends StatelessWidget {
  CostumAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Row(
        children: [
          Row(
            children: [
              Image.asset(
                'assets/images/Logo.png',
                height: 40,
              ),
              const SizedBox(
                width: 4,
              ),
              Text(
                'Book Store',
                style: TextTheme().displayLarge,
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