import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    this.borderRadius,
    required this.backgroundColor,
    required this.textColor,
    required this.fontWeight,
    this.fontSize,
  });
  final String text;
  final BorderRadius? borderRadius;
  final Color backgroundColor;
  final Color textColor;
  final FontWeight fontWeight;
  final double? fontSize;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        
        style: TextButton.styleFrom(
          
            backgroundColor: backgroundColor,
            shape:
                RoundedRectangleBorder(borderRadius: borderRadius ?? BorderRadius.circular(16))),
        onPressed: () {},
        child: Text(
          text,
          style: Styles.textStyle18.copyWith(
            fontWeight: fontWeight,
            color: textColor,
            fontSize: fontSize ?? 18,
          ),
        ),
      ),
    );
  }
}
