import 'package:bookapp/core/utils/styles.dart';
import 'package:bookapp/core/widgets/customError.dart';
import 'package:bookapp/features/Search/Presentation/view_model/cubit/search_books_cubit.dart';
import 'package:bookapp/features/home/presentation/views/widgets/newestListItem.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchResultListView extends StatelessWidget {
  SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBooksCubit, SearchBooksState>(
      builder: (context, state) {
        if (state is SearchBooksSuccess) {
          return ListView.builder(
              itemCount: state.books.length,
              itemBuilder: ((context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: NewsetListItem(bookModel: state.books[index]),
                );
              }));
        } else if (state is SearchBooksFailure) {
          return CustomErrorWidget(errMessage: state.errMessage);
        } else {
          return Center(
            child: Text('Search Now For Books!',style: Styles.displayMeduim.copyWith(color: Color(0xffB030B0)),),
          );
        }
      },
    );
  }
}
