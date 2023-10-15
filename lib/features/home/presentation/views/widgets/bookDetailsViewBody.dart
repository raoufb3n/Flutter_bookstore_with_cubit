import 'package:bookapp/core/utils/styles.dart';
import 'package:bookapp/features/home/data/models/book_model/book_model.dart';
import 'package:bookapp/features/home/presentation/views/widgets/costumListViewItem.dart';
import 'package:bookapp/features/home/presentation/views/widgets/customBookDetailsAppBar.dart';
import 'package:bookapp/features/home/presentation/views/widgets/customButton.dart';
import 'package:bookapp/features/home/presentation/views/widgets/detailsCTA.dart';
import 'package:bookapp/features/home/presentation/views/widgets/ratingWidget.dart';
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class BookDeatailsViewBody extends StatelessWidget {
  BookDeatailsViewBody({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomDeatilsAppBar(),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * .2),
          child: CustomListViewItem(
            url: book.volumeInfo!.imageLinks!.thumbnail!,
          ),
        ),
        const SizedBox(
          height: 24,
        ),
        SizedBox(
          height: 70,
          width: MediaQuery.of(context).size.width * .8,
          child: Text(
            book.volumeInfo!.title!,
            style: Styles.displayMeduim.copyWith(fontSize: 21),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        SizedBox(
          height: 20,
          child: Text(
            book.volumeInfo!.authors?[0] ?? 'Author',
            textAlign: TextAlign.center,
            style: Styles.bodyLarge.copyWith(color: Colors.grey),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        RatingWidget(
          rating: book.volumeInfo!.averageRating ?? 3,
        ),
        const SizedBox(
          height: 16,
        ),
        Container(
            alignment: Alignment.topCenter,
            width: 319,
            height: 85,
            child: Text(
              book.volumeInfo!.description ??
                  'There is no description for this book',
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
                bbok: book,
                  labelText: 'Preview', icon: PhosphorIcons.fill.alignLeft),
              const Spacer(),
              DeatilsCta(
                bbok: book,
                  labelText: 'Reviews',
                  icon: PhosphorIcons.bold.chatTeardropDots)
            ],
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: CustomButton(),
        )
      ],
    );
  }
}
