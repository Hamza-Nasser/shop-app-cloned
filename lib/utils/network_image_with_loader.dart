import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

import 'package:shop_cloned/constants.dart';

class NetworkImageWithLoader extends StatelessWidget {
  const NetworkImageWithLoader(
    this.imageSrc, {
    Key? key,
    this.fit = BoxFit.cover,
    this.radius = defaultPadding }) : super(key: key);
    final String imageSrc;
    final double radius;
    final BoxFit fit;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius:BorderRadius.all(Radius.circular(radius)) ,
      child: CachedNetworkImage(
        imageUrl: imageSrc,
        fit: fit,
        imageBuilder: (context, imageProvider)=>Container(
          decoration: BoxDecoration(
            image: DecorationImage(image: imageProvider, fit: fit),
          ),  
        ),
      ),      
    );
  }
}