import 'package:bookapp/core/utils/styles.dart';
import 'package:bookapp/features/home/presentation/views/widgets/customAppBar.dart';
import 'package:bookapp/features/home/presentation/views/widgets/featuredListView.dart';
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class HomeViewBody extends StatefulWidget {
  HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CostumAppBar(),
              FeaturedBokksListView(),
              const SizedBox(
                height: 32,
              ),
              Text(
                'Newest:',
                style: Styles.displayLarge,
              ),
              NewsetListItem(),
            ],
          ),
        ),
      ),
    );
  }
}

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
                    color: Colors.yellowAccent,
                    size: 17,
                  );
                })
              ],
            ),
          ],
        ),
      ],
    );
  }
}
