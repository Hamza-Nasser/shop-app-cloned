import 'package:flutter/material.dart';
import 'package:shop_cloned/screens/home/views/components/offers_carousel_and_categories.dart';
import 'package:shop_cloned/screens/home/views/components/popular_products.dart';
import 'package:shop_cloned/screens/home/views/components/product_model.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            /* SliverAppBar(
            floating: true,
            expandedHeight: 250.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Demo'),
            ),
           ), */ 
            const SliverToBoxAdapter(child: OffersCarouselAndCategories(),),
            SliverToBoxAdapter(child: PopularProducts(),)
            
          ],
        ),
      ),
    );
  }
}