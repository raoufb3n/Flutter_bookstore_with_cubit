import 'package:bookapp/features/home/presentation/views/widgets/newestListItem.dart';
import 'package:flutter/material.dart';

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
