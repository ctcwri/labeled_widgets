part of labeled_widgets;

class LabeledIcon extends StatelessWidget {
  const LabeledIcon({
    Key? key,
    required this.label,
    required this.icon,
    this.mainAxisSize = MainAxisSize.min,
    this.padding,
    this.gap = 0.0,
    this.labelFontSize,
    this.labelFontWeight,
    this.labelColor,
    this.labelStyle,
    this.labelSoftWrap,
    this.labelOverflow,
    this.labelMaxLines,
    this.labelTextWidthBasis,

    this.iconColor,
  }) : super(key: key);

  final String label;
  final double? labelFontSize;
  final FontWeight? labelFontWeight;
  final Color? labelColor;
  final TextStyle? labelStyle;
  final bool? labelSoftWrap;
  final TextOverflow? labelOverflow;
  final int? labelMaxLines;
  final TextWidthBasis? labelTextWidthBasis;
  final MainAxisSize mainAxisSize;
  final EdgeInsets? padding;
  final double gap;

  final IconData? icon;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: padding ?? const EdgeInsets.fromLTRB(0, 0, 4, 0),
        child: Row(
          mainAxisSize: mainAxisSize,
          children: <Widget>[
            Icon(
              icon,
              color: iconColor,
            ),
            SizedBox(
              width: gap,
            ),
            Flexible(
              child: Label(
                label,
                fontSize: labelFontSize,
                fontWeight: labelFontWeight,
                color: labelColor,
                style: labelStyle,
                softWrap: labelSoftWrap,
                overflow: labelOverflow,
                maxLines: labelMaxLines,
                textWidthBasis: labelTextWidthBasis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}