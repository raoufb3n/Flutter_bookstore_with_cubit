import 'package:bookapp/core/widgets/CustomLoadingIndicator.dart';
import 'package:bookapp/core/widgets/customError.dart';
import 'package:bookapp/features/home/presentation/view_models/featuredBooksCubit/featurebooks_cubit.dart';
import 'package:bookapp/features/home/presentation/views/widgets/costumListViewItem.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedBokksListView extends StatelessWidget {
  const FeaturedBokksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturebooksCubit, FeaturebooksState>(
      builder: (context, state) {
        if (state is FeaturebooksSuccess) {
          return SizedBox(
              height: MediaQuery.of(context).size.height * .3,
              child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  itemCount: state.books.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.only(right: 24),
                        child: CustomListViewItem(
                          url: state.books[index].volumeInfo!.imageLinks!.thumbnail!,
                        ),
                      )));
        } else if (state is FeaturebooksFailure) {
          return CustomErrorWidget(errMessage: state.errMessage);
        } else {
          return CustomLoadingIndicator();
        }
      },
    );
  }
}
