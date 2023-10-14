import 'package:bookapp/core/widgets/CustomLoadingIndicator.dart';
import 'package:bookapp/core/widgets/customError.dart';
import 'package:bookapp/features/home/presentation/view_models/NewestBooksCubit/newest_books_cubit_cubit.dart';
import 'package:bookapp/features/home/presentation/views/widgets/newestListItem.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewestListView extends StatelessWidget {
  const NewestListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubitCubit, NewestBooksCubitState>(
      builder: (context, state) {
        if (state is NewestBooksCubitSuccess) {
          return ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: state.books.length,
              itemBuilder: ((context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: NewsetListItem(
                    bookModel: state.books[index],
                  ),
                );
              }));
        } else if (state is NewestBooksCubitFailure) {
          return CustomErrorWidget(errMessage: state.errorMessage);
        } else {
          return CustomLoadingIndicator();
        }
      },
    );
  }
}
