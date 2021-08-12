part of labeled_widgets;

class LabeledSwitch extends StatelessWidget {
  const LabeledSwitch({
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
    this.activeTrackColor,
    this.inactiveThumbColor,
    this.inactiveTrackColor,
    this.activeThumbImage,
    this.onActiveThumbImageError,
    this.inactiveThumbImage,
    this.onInactiveThumbImageError,
    this.thumbColor,
    this.trackColor,
    this.materialTapTargetSize,
    this.dragStartBehavior = DragStartBehavior.start,
    this.mouseCursor,
    this.focusColor,
    this.hoverColor,
    this.overlayColor,
    this.splashRadius,
    this.focusNode,
    this.autofocus = false,
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
  final Color? activeTrackColor;
  final Color? inactiveThumbColor;
  final Color? inactiveTrackColor;
  final ImageProvider? activeThumbImage;
  final ImageErrorListener? onActiveThumbImageError;
  final ImageProvider? inactiveThumbImage;
  final ImageErrorListener? onInactiveThumbImageError;
  final MaterialStateProperty<Color?>? thumbColor;
  final MaterialStateProperty<Color?>? trackColor;
  final MaterialTapTargetSize? materialTapTargetSize;
  final DragStartBehavior dragStartBehavior;
  final MouseCursor? mouseCursor;
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
      onTap: () => onChanged?.call(!value),
      child: Padding(
        padding: padding ?? const EdgeInsets.fromLTRB(0, 0, 4, 0),
        child: Row(
          mainAxisSize: mainAxisSize,
          children: <Widget>[
            Switch(
              value: value,
              onChanged: onChanged,
              activeColor: activeColor,
              activeTrackColor: activeTrackColor,
              inactiveThumbColor: inactiveThumbColor,
              inactiveTrackColor: inactiveTrackColor,
              activeThumbImage: activeThumbImage,
              onActiveThumbImageError: onActiveThumbImageError,
              inactiveThumbImage: inactiveThumbImage,
              onInactiveThumbImageError: onInactiveThumbImageError,
              thumbColor: thumbColor,
              trackColor: trackColor,
              materialTapTargetSize: materialTapTargetSize,
              dragStartBehavior: dragStartBehavior,
              mouseCursor: mouseCursor,
              focusColor: focusColor,
              hoverColor: hoverColor,
              overlayColor: overlayColor,
              splashRadius: splashRadius,
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