import 'package:school_app/core/constants/app_packages.dart';

class HorizontalSizedBox extends StatelessWidget {
  final double width;
  final Color? color;

  const HorizontalSizedBox(this.width, {this.color, super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width.w,
      child: ColoredBox(
        color: color ?? Colors.transparent,
      ),
    );
  }
}
