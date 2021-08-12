part of labeled_widgets;

class LabeledCheckbox extends StatelessWidget {
  const LabeledCheckbox({
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

    this.tristate = false,
    this.mouseCursor,
    this.activeColor,
    this.fillColor,
    this.checkColor,
    this.focusColor,
    this.hoverColor,
    this.overlayColor,
    this.splashRadius,
    this.materialTapTargetSize,
    this.visualDensity,
    this.focusNode,
    this.autofocus = false,
    this.shape,
    this.side,
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

  final bool? value;
  final ValueChanged<bool?>? onChanged;
  final MouseCursor? mouseCursor;
  final Color? activeColor;
  final MaterialStateProperty<Color?>? fillColor;
  final Color? checkColor;
  final bool tristate;
  final MaterialTapTargetSize? materialTapTargetSize;
  final VisualDensity? visualDensity;
  final Color? focusColor;
  final Color? hoverColor;
  final MaterialStateProperty<Color?>? overlayColor;
  final double? splashRadius;
  final FocusNode? focusNode;
  final bool autofocus;
  final OutlinedBorder? shape;
  final BorderSide? side;

  final Color? color;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onChanged?.call(!(value ?? false)),
      child: Padding(
        padding: padding ?? const EdgeInsets.fromLTRB(0, 0, 4, 0),
        child: Row(
          mainAxisSize: mainAxisSize,
          children: <Widget>[
            Checkbox(
              value: value,
              onChanged: onChanged,
              mouseCursor: mouseCursor,
              activeColor: activeColor,
              fillColor: fillColor,
              checkColor: checkColor,
              tristate: tristate,
              materialTapTargetSize: materialTapTargetSize,
              visualDensity: visualDensity,
              focusColor: focusColor,
              hoverColor: hoverColor,
              overlayColor: overlayColor,
              splashRadius: splashRadius,
              focusNode: focusNode,
              autofocus: autofocus,
              shape: shape,
              side: side,
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