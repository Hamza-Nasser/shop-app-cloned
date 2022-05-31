import 'package:flutter/material.dart';
import 'package:shop_cloned/constants.dart';


class CategoryModel{
  final String name;
  final String? svgSrc, route;
  CategoryModel({required this.name, this.svgSrc, this.route});
}
var _selectedIndex = 0;


class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    List<CategoryModel> demoCategories = [
      CategoryModel(name: "All categories"),
      CategoryModel(name: "On sale"),
      CategoryModel(name: "Men's"),
      CategoryModel(name: "Women's"),
      CategoryModel(name: "Kids"),
      CategoryModel(name: "Hot Sales"),
    
  ];
  
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(demoCategories.length, (index) {
          return Padding(
            padding: EdgeInsets.only(
              left: index == 0? defaultPadding: defaultPadding/2,
              right: index == demoCategories.length -1? defaultPadding: 0,
              
            ),
            child: CategoryBtn(
              category: demoCategories[index].name,
              isActive: index == _selectedIndex,
              press: (){
                setState(() {
                  _selectedIndex = index;
                });
                  
                
              },
              

            ),
          );
        }),
      ),
    );
  }
}



class CategoryBtn extends StatelessWidget {
   const CategoryBtn({ 
    Key? key, 
    this.press,
    required this.category,
    this.isActive = false
    }) : super(key: key);
  final VoidCallback? press;
  final String category;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      borderRadius: BorderRadius.circular(30),
      child: Container(
        height: 36,
        padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
        decoration: BoxDecoration(
          color: isActive? const Color.fromARGB(255, 5, 102, 114):const Color.fromARGB(255, 47, 149, 149),
          borderRadius: BorderRadius.circular(30),

        ),
        child: Row(
          children: [
            Text(category,
              style: const TextStyle(
                fontSize: 12,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}