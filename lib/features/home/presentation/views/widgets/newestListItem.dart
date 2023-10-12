import 'package:bookapp/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class NewsetListItem extends StatelessWidget {
  const NewsetListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            height: 140,
            width: 100,
            child: Image.asset(
              'assets/images/BookCover.png',
              fit: BoxFit.contain,
            )),
        const SizedBox(
          width: 16,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 4,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * .5,
              child: Text(
                'Book Name',
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: Styles.displayMeduim,
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              'Author Name',
              style: Styles.labelText.copyWith(color: Colors.grey),
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              children: [
                ...List.generate(5, (index) {
                  return PhosphorIcon(
                    PhosphorIcons.fill.star,
                    color: Color(0xffFFC41F),
                    size: 17,
                  );
                })
              ],
            ),
          ],
        ),
        const Spacer(),
        IconButton(
          onPressed: () {},
          icon: PhosphorIcon(PhosphorIcons.bold.bookmarkSimple),
        )
      ],
    );
  }
}
