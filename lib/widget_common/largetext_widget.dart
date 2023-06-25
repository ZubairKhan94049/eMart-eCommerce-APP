import '../consts/consts.dart';

class LargeText extends StatelessWidget {
  const LargeText({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return  Text(
        text,
      style: const TextStyle(
        fontFamily: bold,
        fontSize: 22,
        color: whiteColor,
      ),
    );
  }
}
