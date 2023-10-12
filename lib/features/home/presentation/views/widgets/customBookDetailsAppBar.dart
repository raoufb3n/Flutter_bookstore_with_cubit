import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class CustomDeatilsAppBar extends StatelessWidget {
  const CustomDeatilsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          IconButton(
              onPressed: () {
                GoRouter.of(context).pop();
              },
              icon: PhosphorIcon(
                PhosphorIcons.bold.caretLeft,
                size: 24,
              )),
          const Spacer(),
          IconButton(
              onPressed: () {},
              icon: PhosphorIcon(
                PhosphorIcons.bold.shoppingCartSimple,
                size: 24,
              )),
        ],
      ),
    );
  }
}