import 'package:flutter/material.dart';
import 'package:shop_cloned/constants.dart';
import 'package:shop_cloned/screens/home/views/components/Banner/m/banner_m.dart';

class BannerMStyle2 extends StatelessWidget {
  const BannerMStyle2({
    Key? key,
    this.image = "https://i.imgur.com/J1Qjut7.png",
    required this.onBarPress,

    required this.title,
    this.subtitle = "",
    this.discountParcent,
    }) : super(key: key);
    final String? image;
    final VoidCallback onBarPress;
  
    final String title;
    final String? subtitle;
    final int? discountParcent;
    

  @override
  Widget build(BuildContext context) {
    return BannerM(
      image: image ?? "https://i.imgur.com/J1Qjut7.png" ,
      onTheBarPress: onBarPress,
      children: [
        Padding(
          padding: const EdgeInsets.all(defaultPadding),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title.toUpperCase(),
                      style: const TextStyle(
                        fontFamily: grandisExtendedFont,
                        fontSize: 28,
                        fontWeight: FontWeight.w900,
                        color: Colors.white,
                        height: 1,
                      ),

                    ),
                    const SizedBox(height: defaultPadding/4,),
                    Text(
                      subtitle!.toUpperCase(),
                      style: const TextStyle(
                        fontFamily: grandisExtendedFont,
                        fontSize: 12,
                        fontWeight: FontWeight.w900,
                        color: Colors.white,
                        height: 1,
                      ),
                    ),

                  ],

                ),
              )
            ],

          ),
        )
      ],

    );
  }
  
}