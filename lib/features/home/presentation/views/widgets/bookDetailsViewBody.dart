import 'package:bookapp/core/utils/styles.dart';
import 'package:bookapp/features/home/presentation/views/widgets/costumListViewItem.dart';
import 'package:bookapp/features/home/presentation/views/widgets/customBookDetailsAppBar.dart';
import 'package:bookapp/features/home/presentation/views/widgets/customButton.dart';
import 'package:bookapp/features/home/presentation/views/widgets/detailsCTA.dart';
import 'package:bookapp/features/home/presentation/views/widgets/ratingWidget.dart';
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class BookDeatailsViewBody extends StatelessWidget {
  const BookDeatailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomDeatilsAppBar(),
        const SizedBox(
          height: 16,
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * .2),
          child: CustomListViewItem(),
        ),
        const SizedBox(
          height: 32,
        ),
        Text(
          'Yves Saint Laurent',
          style: Styles.displayLarge,
        ),
        const SizedBox(
          height: 12,
        ),
        Text(
          'Suzy Menkes',
          style: Styles.bodyLarge.copyWith(color: Colors.grey),
        ),
        const SizedBox(
          height: 8,
        ),
        RatingWidget(),
        const SizedBox(
          height: 16,
        ),
        Container(
            width: 319,
            child: Text(
              'A spectacular visual journey through 40 years of haute couture from one of the best-known and most trend-setting brands in fashion.',
              style: Styles.bodyMeduim.copyWith(color: Colors.grey),
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
            )),
        const SizedBox(
          height: 8,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DeatilsCta(
                  labelText: 'Preview', icon: PhosphorIcons.fill.alignLeft),
              const Spacer(),
              DeatilsCta(
                  labelText: 'Reviews',
                  icon: PhosphorIcons.bold.chatTeardropDots)
            ],
          ),
        ),
        const SizedBox(
          height: 24,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: CustomButton(),
        )
      ],
    );
  }
}
