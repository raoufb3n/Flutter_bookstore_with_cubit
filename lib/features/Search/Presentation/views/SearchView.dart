import 'package:bookapp/features/Search/Presentation/views/widgets/SearchViewBody.dart';
import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: SearchViewBody()),
    );
  }
}
