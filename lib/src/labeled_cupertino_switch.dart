part of labeled_widgets;

class LabeledCupertinoSwitch extends StatelessWidget {
  const LabeledCupertinoSwitch({
    Key? key,
    required this.label,
    required this.value,
    required this.onChanged,
    this.mainAxisSize = MainAxisSize.min,
    this.padding,
    this.gap = 0.0,

    this.labelFontSize,
    this.labelFontWeight,
    this.labelColor,
    this.labelCheckColor,
    this.labelStyle,
    this.labelSoftWrap,
    this.labelOverflow,
    this.labelMaxLines,
    this.labelTextWidthBasis,

    this.activeColor,
    this.trackColor,
    this.dragStartBehavior = DragStartBehavior.start,
  }) : color = value == true ? labelCheckColor: labelColor,
        super(key: key);

  final String label;
  final double? labelFontSize;
  final FontWeight? labelFontWeight;
  final Color? labelColor;
  final Color? labelCheckColor;
  final TextStyle? labelStyle;
  final bool? labelSoftWrap;
  final TextOverflow? labelOverflow;
  final int? labelMaxLines;
  final TextWidthBasis? labelTextWidthBasis;
  final MainAxisSize mainAxisSize;
  final EdgeInsets? padding;
  final double gap;

  final bool value;
  final ValueChanged<bool>? onChanged;
  final Color? activeColor;
  final Color? trackColor;
  final DragStartBehavior dragStartBehavior;

  final Color? color;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onChanged?.call(!value),
      child: Padding(
        padding: padding ?? const EdgeInsets.fromLTRB(0, 0, 4, 0),
        child: Row(
          mainAxisSize: mainAxisSize,
          children: <Widget>[
            CupertinoSwitch(
              value: value,
              onChanged: onChanged,
              activeColor: activeColor,
              trackColor: trackColor,
              dragStartBehavior: dragStartBehavior,
            ),
            SizedBox(
              width: gap,
            ), // you can control gap between checkbox and label with this field
            Flexible(
              child: Label(
                label,
                fontSize: labelFontSize,
                fontWeight: labelFontWeight,
                color: color,
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