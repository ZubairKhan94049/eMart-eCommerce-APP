import '../consts/consts.dart';

class SmallText extends StatelessWidget {
  const SmallText({
    super.key,
    required this.text,
    this.family,
    this.size,
    this.color,
  });

  final String text;
  final String? family;
  final double? size;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:  TextStyle(
        color: color ?? whiteColor ,
        fontSize: size ?? 16,
        fontFamily: family ?? semibold,
      ),
    );
  }
}
