import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final VoidCallback onPressed;
  final String buttonText;
  final double height ;
  final double width;
  final Color color;

  const Button({
    required this.onPressed, 
    required this.buttonText,
    required this.height,
    required this.width,
    required this.color,
    Key? key
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: color
        ),
        child: Text(buttonText)
      ),
    );
  }
}
