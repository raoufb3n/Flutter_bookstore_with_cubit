import 'package:bookapp/core/utils/styles.dart';
import 'package:bookapp/features/Search/Presentation/views/widgets/CostumSearchTextFieald.dart';
import 'package:bookapp/features/home/presentation/views/widgets/newestListItem.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              IconButton(
                  padding: EdgeInsets.all(0),
                  onPressed: () {
                    GoRouter.of(context).pop();
                  },
                  icon: PhosphorIcon(
                    PhosphorIcons.bold.caretLeft,
                    size: 24,
                  )),
            ],
          ),
          CustomSearchTextFieald(),
          const SizedBox(
            height: 24,
          ),
          Text(
            'Search Result',
            style: Styles.displayMeduim,
          ),
          const SizedBox(
            height: 12,
          ),
          Expanded(child: SearchResultListView()),
        ],
      ),
    );
  }
}

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: ((context, index) {
          return const NewsetListItem();
        }));
  }
}
