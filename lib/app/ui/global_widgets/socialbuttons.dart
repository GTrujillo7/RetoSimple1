import 'package:flutter/material.dart';

class SocialButton extends StatelessWidget {
  final Function function;
  final Color bgColor;
  final String image;

  SocialButton({
    @required this.function,
    this.bgColor,
    @required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => this.function,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 50,
          width: 50,
          child: Image.asset(this.image),
          decoration: BoxDecoration(
            color: this.bgColor,
            borderRadius: BorderRadius.circular(50),
          ),
        ),
      ),
    );
  }
}
