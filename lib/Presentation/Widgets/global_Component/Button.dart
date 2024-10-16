import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Button_Widget extends StatelessWidget {
  final double width;
  final String text;
  final Color color_button;
  final double border_radius;
  final String link_page;
  final double font_size;
  final double padding_value;

  const Button_Widget({super.key, 
    required this.text,
    required this.color_button,
    required this.border_radius,
    required this.width,
    required this.link_page,
    required this.font_size,
    required this.padding_value,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, link_page);
      },
      child: Container(
        padding: EdgeInsets.all(padding_value),
        width: width,
        decoration: BoxDecoration(
          color: color_button,
          borderRadius: BorderRadius.circular(border_radius),
        ),
        child: Text(
          text,
          style: TextStyle(
              color: Colors.white,
              fontSize: font_size,
              fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
