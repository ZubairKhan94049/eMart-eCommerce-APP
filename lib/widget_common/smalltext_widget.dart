import '../consts/consts.dart';

class SmallText extends StatelessWidget {
  const SmallText({
    super.key,
    required this.text,
    this.family,
  });

  final String text;
  final String? family;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:  TextStyle(
        color: whiteColor,
        fontSize: 18,
        fontFamily: family,
      ),
    );
  }
}
