import 'package:bookapp/core/functions/lunch_urls.dart';
import 'package:bookapp/core/utils/styles.dart';
import 'package:bookapp/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class DeatilsCta extends StatelessWidget {
  DeatilsCta(
      {super.key,
      required this.labelText,
      required this.icon,
      required this.bbok});
  String labelText;
  PhosphorIconData icon;

  BookModel bbok;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
       
        lunchCustomUrl(context, bbok.volumeInfo!.previewLink!);
      },
      child: Container(
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
      ),
    );
  }
}
