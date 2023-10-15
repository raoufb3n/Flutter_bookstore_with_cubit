import 'package:bookapp/core/utils/styles.dart';
import 'package:bookapp/features/home/data/models/book_model/book_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class NewsetListItem extends StatelessWidget {
  NewsetListItem({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: GestureDetector(
        onTap: () {
          GoRouter.of(context).push('/details',extra: bookModel);
        },
        child: SizedBox(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  height: 140,
                  width: 100,
                  clipBehavior: Clip.antiAlias,
                  child: CachedNetworkImage(
                    fit: BoxFit.fill,
                    imageUrl: bookModel.volumeInfo!.imageLinks!.thumbnail!,
                    placeholder: ((context, url) =>
                        Center(child: CircularProgressIndicator())),
                    errorWidget: (context, url, error) => PhosphorIcon(
                      PhosphorIcons.bold.book,
                      size: 50,
                    ),
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
                      bookModel.volumeInfo!.title!,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: Styles.displayMeduim,
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    child: Text(
                      bookModel.volumeInfo!.authors?[0] ?? 'Author',
                      style: Styles.labelText.copyWith(color: Colors.grey),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      ...List.generate(bookModel.volumeInfo!.averageRating ?? 3, (index) {
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
          ),
        ),
      ),
    );
  }
}
