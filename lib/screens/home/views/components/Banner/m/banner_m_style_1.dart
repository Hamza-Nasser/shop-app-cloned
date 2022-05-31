import 'package:flutter/material.dart';
import 'package:shop_cloned/constants.dart';
import 'package:shop_cloned/screens/home/views/components/Banner/m/banner_m.dart';

class BannerMStyle1 extends StatelessWidget {
  const BannerMStyle1({
    Key? key,
    this.image = "https://i.imgur.com/UP7xhPG.png",
    required this.text,
    required this.onBarPressed }) : super(key: key);
     final String? image;
     final String text;
     final VoidCallback onBarPressed;

  @override
  Widget build(BuildContext context) {
    return BannerM(
      image: image!,
      onTheBarPress: onBarPressed,
      children: [
        Padding(
          padding: const EdgeInsets.all(defaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Spacer(flex: 2,),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.75,
                child: Text(
                  text,
                  style: const TextStyle(
                    fontFamily: grandisExtendedFont,
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.w600
                  ),
                ),
              ),
              const Spacer(),
              const Text('Shop Now',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600
                ),

              ),
              const SizedBox(
                width: 64,
                child: Divider(
                  color: Colors.white,
                  thickness: 2,
                ),
              ),
              const Spacer(flex: 1,)
            ],
          ),
        )
      ],

      
    );
  }
}