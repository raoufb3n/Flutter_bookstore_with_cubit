import 'package:bookapp/features/home/presentation/views/widgets/newestListItem.dart';
import 'package:flutter/material.dart';

class NewestListView extends StatelessWidget {
  const NewestListView({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
      physics:const NeverScrollableScrollPhysics(),
       itemCount: 10,
       itemBuilder: ((context, index) {
        return const NewsetListItem();
                    })
      );
  }
}