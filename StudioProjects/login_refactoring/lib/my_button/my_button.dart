import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {

  MyButton({required this.image, required this.text, required this.color, required this.redius, required this.onPressed});

  final Widget image;
  final Widget text;
  final Color color;
  final double redius;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {

    return ButtonTheme(
      height: 50.0,
      child: ElevatedButton(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            image,
            text,
            Opacity(opacity: 0.0,
              child: Image.asset('image/glogo.png'),
            )
          ],
        ),
        style: ElevatedButton.styleFrom(
          primary: color,
        ),
        onPressed: onPressed,
      ),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(redius),
          )
      ),
    );
  }
}
