import '../consts/consts.dart';

class LargeText extends StatelessWidget {
  const LargeText({
    super.key,
    required this.text,
    this.fontSize,
    this.fontFamily,
    this.color,
  });
  final String text;
  final double? fontSize;
  final String? fontFamily;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: fontFamily ?? bold,
        fontSize: fontSize ?? 22,
        color: color ?? whiteColor,
      ),
    );
  }
}
