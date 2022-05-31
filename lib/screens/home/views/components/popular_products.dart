import 'package:flutter/material.dart';
import 'package:shop_cloned/constants.dart';
import 'package:shop_cloned/screens/home/views/components/product_card.dart';
import 'package:shop_cloned/screens/home/views/components/product_model.dart';



class PopularProducts extends StatelessWidget {
  PopularProducts({ Key? key }) : super(key: key);

  final List<ProductModel> demoProductModels =[
    ProductModel(
      image: "https://i.imgur.com/CGCyp1d.png",
      brandName: "Zara",
      price: 200,
      title: 'T-shirt',
      discountPercent: 10,
    ),
    ProductModel(
      image: "https://i.imgur.com/JfyZlnO.png",
      brandName: "Zara",
      price: 200,
      title: 'T-shirt',
      discountPercent: 10,
    ),
    ProductModel(
      image: "https://i.imgur.com/AkzWQuJ.png",
      brandName: "Zara",
      price: 200,
      title: 'T-shirt',
    ),
    ProductModel(
      image: "https://i.imgur.com/q9oF9Yq.png",
      brandName: "Zara",
      price: 200,
      title: 'T-shirt',
      discountPercent: 10,
    ),
  ];


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(defaultPadding),
          child: Text('Popular prouducts'),
        ),
        SizedBox(
          height: 220,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: demoProductModels.length,
            itemBuilder: (context, index)=> Padding(
              padding: EdgeInsets.only(
                left: defaultPadding,
                right: index == demoProductModels.length - 1? defaultPadding: 0
              ),
              child: ProductCard(
                image: demoProductModels[index].image,
                discountPercent: demoProductModels[index].discountPercent,
                title: demoProductModels[index].title,
                brandName: demoProductModels[index].brandName,
                price: demoProductModels[index].price,
                priceAfterDiscount: demoProductModels[index].priceAfterDiscount,
                
              ),
            ),
          


          ),

        )
      ],
    );
  }
}