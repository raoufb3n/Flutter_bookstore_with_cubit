import 'package:bookapp/core/utils/serviceLocator.dart';
import 'package:bookapp/core/utils/styles.dart';
import 'package:bookapp/features/Search/Data/repo/SearchRepoImpl.dart';
import 'package:bookapp/features/Search/Presentation/view_model/cubit/search_books_cubit.dart';
import 'package:bookapp/features/Search/Presentation/views/widgets/CostumSearchTextFieald.dart';
import 'package:bookapp/features/Search/Presentation/views/widgets/SearchResultListView.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SearchBooksCubit(getIt.get<SearchRepoImpl>()),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
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
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: CustomSearchTextFieald(),
            ),
            const SizedBox(
              height: 24,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Search Result',
                style: Styles.displayMeduim,
              ),
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
