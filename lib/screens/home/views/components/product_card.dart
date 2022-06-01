import 'package:flutter/material.dart';
import 'package:shop_cloned/constants.dart';
import 'package:shop_cloned/utils/network_image_with_loader.dart';

class ProductCard extends StatelessWidget {
  const ProductCard(
      {Key? key,
      this.image = "https://i.imgur.com/CGCyp1d.png",
      this.discountPercent,
      this.title,
      this.brandName,
      this.priceAfterDiscount,
      this.price})
      : super(key: key);
  final String image;
  final int? discountPercent;
  final String? title;
  final String? brandName;
  final double? priceAfterDiscount;
  final double? price;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},
      style: OutlinedButton.styleFrom(
          minimumSize: const Size(140, 220),
          maximumSize: const Size(140, 220),
          padding: const EdgeInsets.all(8)),
      child: Column(
        children: [
          AspectRatio(
            aspectRatio: 1.15,
            child: Stack(
              children: [
                NetworkImageWithLoader(
                  image,
                  fit: BoxFit.cover,
                  radius: 12,
                ),
                if (discountPercent != null)
                  Positioned(
                    right: defaultPadding / 2,
                    top: defaultPadding / 2,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: defaultPadding / 2),
                      height: 16,
                      decoration: const BoxDecoration(
                          color: accentColor,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Center(
                        child: Text(
                          "$discountPercent% off",
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                          ),
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: defaultPadding, vertical: defaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '$brandName'.toUpperCase(),
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(fontSize: 10),
                  ),
                  const SizedBox(
                    height: defaultPadding / 2,
                  ),
                  Text(
                    '$title'.toUpperCase(),
                    maxLines: 2,
                    style: Theme.of(context)
                        .textTheme
                        .subtitle2!
                        .copyWith(fontSize: 12),
                  ),
                  const Spacer(),
                  priceAfterDiscount != null
                      ? Row(
                          children: [
                            Text(
                              '\$' + priceAfterDiscount.toString(),
                              style: const TextStyle(
                                color: Color(0xFF31B0D8),
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                              ),
                            ),
                            const SizedBox(width: defaultPadding),
                            Text(
                              "\$" + price.toString(),
                              style: TextStyle(
                                color: Theme.of(context)
                                    .textTheme
                                    .bodyText2!
                                    .color,
                                fontSize: 10,
                                decoration: TextDecoration.lineThrough,
                              ),
                            ),
                          ],
                        )
                      : Text(
                          "\$" + price.toString(),
                          style: const TextStyle(
                            color: defaultColor,
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                          ),
                        ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
