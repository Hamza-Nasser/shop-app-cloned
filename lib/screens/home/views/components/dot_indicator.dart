import 'package:flutter/material.dart';
import 'package:shop_cloned/constants.dart';
class DotIndicator extends StatelessWidget {
  const DotIndicator({
    Key? key,
    this.isActive = false,
    this.activeColor,
    this.inActiveColor }) : super(key: key);
  final bool isActive;
  final Color? activeColor;
  final Color? inActiveColor;


  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: defaultDuration,
      height: isActive? 12:4,
      width: 4,
      decoration: BoxDecoration(
        color: isActive
            ? activeColor 
            : inActiveColor ?? Colors.amber,
        borderRadius: BorderRadius.circular(defaultPadding),
      ),
    


    );
  }
}