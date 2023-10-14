import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class CustomListViewItem extends StatelessWidget {
  CustomListViewItem({super.key, required this.url});
  final String url;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: AspectRatio(
        aspectRatio: 2.8 / 4,
        child: CachedNetworkImage(
          fit: BoxFit.fill,
          imageUrl: url,
          placeholder: (context, name) =>const Center(child:CircularProgressIndicator()),
          errorWidget: (context, url, error) {
            return PhosphorIcon(
              PhosphorIcons.bold.book,
              size: 50,
            );
          },
        ),
      ),
    );
  }
}
