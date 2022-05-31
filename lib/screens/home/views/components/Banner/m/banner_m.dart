import 'package:flutter/material.dart';
import 'package:shop_cloned/utils/network_image_with_loader.dart';

class BannerM extends StatelessWidget {
  const BannerM({ Key? key,
  required this.image,
  required this.onTheBarPress,
  required this.children })
  : super(key: key);
  final String image;
  final VoidCallback onTheBarPress;
  final List<Widget> children;


  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.87,
      child: GestureDetector(
        onTap: onTheBarPress,
        child: Stack(
          children: [
            NetworkImageWithLoader(image, radius: 0,),
            Container(color:  Colors.black45,),
            ...children
          ],
        ),
        
      ),
      
    );
  }
}