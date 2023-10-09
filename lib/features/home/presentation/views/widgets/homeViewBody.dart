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
        child: Column(
          children: [
            CostumAppBar(),
              CustomListViewItem(),
          ],
        ),
      ),
    );
  }
}

class CostumAppBar extends StatelessWidget {
  CostumAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Row(
        children: [
          Row(
            children: [
              Image.asset(
                'assets/images/Logo.png',
                height: 40,
              ),
              const SizedBox(
                width: 4,
              ),
              Text(
                'Book Store',
                style: TextTheme().displayLarge,
              )
            ],
          ),
          Spacer(),
          IconButton(
              onPressed: () {},
              icon: PhosphorIcon(
                PhosphorIcons.bold.magnifyingGlass,
                size: 27,
              )),
        ],
      ),
    );
  }
}

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 131,
      height: MediaQuery.of(context).size.height * .25,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/BookCover.png'))),
    );
  }
}
