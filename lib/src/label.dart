import 'package:flutter/material.dart';

class Label extends StatelessWidget {
  Label(String this.data, {
    Key? key,
    this.fontSize,
    this.fontWeight,
    this.color,
    this.style,
    this.strutStyle,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.softWrap,
    this.overflow,
    this.textScaleFactor,
    this.maxLines,
    this.semanticsLabel,
    this.textWidthBasis,
    this.textHeightBehavior,
  }) : textStyle = style == null ? TextStyle(
          color: color,
          fontSize: fontSize,
          fontWeight: fontWeight
      ) : style.copyWith(
          color: color,
          fontSize: fontSize,
          fontWeight: fontWeight
      ),
        super(key: key);

  final String? data;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? color;
  final TextStyle? style;
  final StrutStyle? strutStyle;
  final TextAlign? textAlign;
  final TextDirection? textDirection;
  final Locale? locale;
  final bool? softWrap;
  final TextOverflow? overflow;
  final double? textScaleFactor;
  final int? maxLines;
  final String? semanticsLabel;
  final TextWidthBasis? textWidthBasis;
  final TextHeightBehavior? textHeightBehavior;

  final TextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    if (data == null)
      return Container();
    else
      return Text(data!,
        style: textStyle,
        strutStyle:strutStyle,
        textAlign:textAlign,
        textDirection:textDirection,
        locale:locale,
        softWrap:softWrap,
        overflow:overflow,
        textScaleFactor:textScaleFactor,
        maxLines:maxLines,
        semanticsLabel:semanticsLabel,
        textWidthBasis:textWidthBasis,
        textHeightBehavior:textHeightBehavior,
      );
  }
}
