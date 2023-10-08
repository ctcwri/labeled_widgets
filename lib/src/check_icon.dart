part of labeled_widgets;

class CheckIcon extends StatelessWidget {
  const CheckIcon(
    this.icon, {
    Key? key,
    this.value,
    this.checkColor,
    this.size,
  }) : super(key: key);

  final IconData? icon;
  final bool? value;
  final Color? checkColor;
  final double? size;

  @override
  Widget build(BuildContext context) {
    var checked = value ?? false;
    Color? color;
    if (checked) {
      color = checkColor;
    }
    return Icon(icon, color: color, size: size,);
  }

}
