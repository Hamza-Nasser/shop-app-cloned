import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:shop_cloned/constants.dart';
import 'package:shop_cloned/screens/home/views/components/Banner/m/banner_m_style2.dart';
import 'dart:async';

import 'package:shop_cloned/screens/home/views/components/Banner/m/banner_m_style_1.dart';
import 'package:shop_cloned/screens/home/views/components/dot_indicator.dart';

class OffersCarousel extends StatefulWidget {
  const OffersCarousel({ Key? key }) : super(key: key);

  @override
  State<OffersCarousel> createState() => _OffersCarouselState();
}

class _OffersCarouselState extends State<OffersCarousel> {
  int _selectedIndex=0;
  late PageController _pageController;
  late Timer _timer;
  List<Widget> offers = [
    BannerMStyle1(
      text: "New items with \nFree shipping",
      onBarPressed: (){},
    ),
    BannerMStyle2(onBarPress: (){}, title: "Black \nfriday", subtitle: "collections",),
    BannerMStyle2(onBarPress: (){}, title: "hello", image: "https://i.imgur.com/8REExBV.png",),
    BannerMStyle2(onBarPress: (){}, title: "hello", image: "https://i.imgur.com/R4iKkDD.png",),

  ];

  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    _pageController = PageController(initialPage: 0);
    
    _timer = Timer.periodic(const Duration(seconds: 4), (timer) { 
      if(_selectedIndex < offers.length - 1){
        _selectedIndex++;
      } else{
        _selectedIndex = 0;
      }
      _pageController.animateToPage(
        _selectedIndex,
        duration: const Duration(milliseconds: 350),
        curve: Curves.easeOutCubic
      );

    });


    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return  AspectRatio(
      aspectRatio: 1.87,
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          PageView.builder(
            itemBuilder: (context, index) => offers[index],
            controller: _pageController,
            itemCount: offers.length,
            onPageChanged: (int index) => setState(() {
              _selectedIndex = index;
            })
          ),
          FittedBox(
            child: Padding(
              padding: const EdgeInsets.all(defaultPadding),
              child: Row(
                children: 
                  List.generate(offers.length, (index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: defaultPadding/4),
                      child: DotIndicator(
                        isActive: index == _selectedIndex,
                        activeColor: Colors.grey,
                        inActiveColor: const Color.fromARGB(255, 237, 217, 217),

                      ),
                    );
                  })
                ,
              ),
            ),
          )
        ],

      ),
    );
  }
  @override
  void dispose() {
    // ignore: todo
    // TODO: implement dispose
    _pageController.dispose();
    _timer.cancel();
    super.dispose();
  }
}