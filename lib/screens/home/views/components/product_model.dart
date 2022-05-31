class ProductModel{
  final String image, brandName, title;
  final double price;
  final double? priceAfterDiscount;
  final int? discountPercent;
  ProductModel({
    required this.brandName,
    this.discountPercent = 0,
    required this.image,
    required this.price,
    required this.title,
    this.priceAfterDiscount
  });
  

}
