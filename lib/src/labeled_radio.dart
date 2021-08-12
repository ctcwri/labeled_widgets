part of labeled_widgets;

class LabeledRadio<T> extends StatelessWidget {
  const LabeledRadio({
    Key? key,
    required this.label,
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

    required this.value,
    required this.groupValue,
    required this.onChanged,
    this.mouseCursor,
    this.toggleable = false,
    this.activeColor,
    this.fillColor,
    this.focusColor,
    this.hoverColor,
    this.overlayColor,
    this.splashRadius,
    this.materialTapTargetSize,
    this.visualDensity,
    this.focusNode,
    this.autofocus = false,
  }) : color = value == groupValue ? labelCheckColor: labelColor,
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

  final T value;
  final T? groupValue;
  final ValueChanged<T?>? onChanged;
  final MouseCursor? mouseCursor;
  final bool toggleable;
  final Color? activeColor;
  final MaterialStateProperty<Color?>? fillColor;
  final MaterialTapTargetSize? materialTapTargetSize;
  final VisualDensity? visualDensity;
  final Color? focusColor;
  final Color? hoverColor;
  final MaterialStateProperty<Color?>? overlayColor;
  final double? splashRadius;
  final FocusNode? focusNode;
  final bool autofocus;

  final Color? color;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onChanged?.call(value),
      child: Padding(
        padding: padding ?? const EdgeInsets.fromLTRB(0, 0, 4, 0),
        child: Row(
          mainAxisSize: mainAxisSize,
          children: <Widget>[
            Radio<T>(
              value: value,
              groupValue: groupValue,
              onChanged: onChanged,
              mouseCursor: mouseCursor,
              toggleable: toggleable,
              activeColor: activeColor,
              fillColor: fillColor,
              focusColor: focusColor,
              hoverColor: hoverColor,
              overlayColor: overlayColor,
              splashRadius: splashRadius,
              materialTapTargetSize: materialTapTargetSize,
              visualDensity: visualDensity,
              focusNode: focusNode,
              autofocus: autofocus,
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