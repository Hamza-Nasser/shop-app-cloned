import 'package:flutter/material.dart';
import 'package:shop_cloned/constants.dart';
import 'package:shop_cloned/screens/home/views/components/categories.dart';

import 'offers_carousel.dart';

class OffersCarouselAndCategories extends StatelessWidget {
  const OffersCarouselAndCategories({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        OffersCarousel(),
        Padding(
          padding: EdgeInsets.all(defaultPadding),
          child: Text('Categories'),
        ),
        Categories(),
      ], 
    );/*  Column(
      children: const [
        OffersCarousel(),
      ],
    ); */
  }
}
