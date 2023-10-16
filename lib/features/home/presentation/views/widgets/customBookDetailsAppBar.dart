import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class CustomDeatilsAppBar extends StatelessWidget {
  const CustomDeatilsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
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

        ],
      ),
    );
  }
}
