import 'package:flutter/material.dart';

class TextStyleMap {
  final double fontSize;

  const TextStyleMap({required this.fontSize});

  TextStyle call({
    String fontFamily = "Poppins",
    Color color = Colors.black,
    FontWeight fontWeight = FontWeight.w400,
    double letterSpacing = 0,
    FontStyle fontStyle = FontStyle.normal,
    TextDecoration textDecoration = TextDecoration.none,
  }) {
    return TextStyle(
      fontFamily: fontFamily,
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
      letterSpacing: letterSpacing,
      fontStyle: fontStyle,
      decoration: textDecoration,
    );
  }

  TextStyle get medium => call(fontWeight: FontWeight.w500);
  TextStyle get semiBold => call(fontWeight: FontWeight.w600);
  TextStyle get bold => call(fontWeight: FontWeight.w700);
  TextStyle get link => call(textDecoration: TextDecoration.underline);
}

const TextStyleMap logo = TextStyleMap(fontSize: 36);
const TextStyleMap h1 = TextStyleMap(fontSize: 26);
const TextStyleMap h2 = TextStyleMap(fontSize: 24);
const TextStyleMap h3 = TextStyleMap(fontSize: 22);
const TextStyleMap h4 = TextStyleMap(fontSize: 20);
const TextStyleMap subTitle = TextStyleMap(fontSize: 18);
const TextStyleMap largeText = TextStyleMap(fontSize: 16);
const TextStyleMap mediumText = TextStyleMap(fontSize: 14);
const TextStyleMap smallText = TextStyleMap(fontSize: 12);
const TextStyleMap caption = TextStyleMap(fontSize: 10);
