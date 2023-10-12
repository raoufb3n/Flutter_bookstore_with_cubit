import 'package:bookapp/features/home/presentation/views/widgets/costumListViewItem.dart';
import 'package:bookapp/features/home/presentation/views/widgets/customBookDetailsAppBar.dart';
import 'package:flutter/material.dart';

class BookDeatailsViewBody extends StatelessWidget {
  const BookDeatailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomDeatilsAppBar(),
        const SizedBox(
          height: 24,
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * .2),
          child: CustomListViewItem(),
        ),
      ],
    );
  }
}
