import 'package:bookapp/core/utils/styles.dart';
import 'package:bookapp/features/Search/Presentation/view_model/cubit/search_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class CustomSearchTextFieald extends StatelessWidget {
  CustomSearchTextFieald({super.key});
  String? prompt;
  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (value) {
        prompt = value;
      },
      decoration: InputDecoration(
          suffixIconColor: Colors.white,
          focusColor: Color(0xffB030B0),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(13),
              borderSide: BorderSide(color: Color(0xffB030B0))),
          filled: true,
          fillColor: Color(0xff202060),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(13),
            borderSide: BorderSide(color: Color(0xff202060)),
          ),
          hintText: 'Search',
          hintStyle: Styles.labelText,
          suffixIcon: IconButton(
              splashColor: Colors.white.withOpacity(0),
              onPressed: () async {
                if (prompt != null) {
                                  await BlocProvider.of<SearchBooksCubit>(context)
                    .fetchFeaturedBooks(prompt!);
                }

              },
              icon: PhosphorIcon(
                PhosphorIcons.bold.magnifyingGlass,
                size: 24,
              ))),
    );
  }
}
