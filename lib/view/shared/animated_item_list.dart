import 'package:school_app/core/constants/app_packages.dart';

class AnimatedItemsList extends StatelessWidget {
  const AnimatedItemsList({super.key, required this.widgets});

  final List<Widget> widgets;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: AnimateList(
          interval: 700.milliseconds,
          effects: [FadeEffect(duration: 500.ms)],
          children: widgets,
        ),
      ),
    );
  }
}
