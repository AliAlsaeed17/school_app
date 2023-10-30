import 'package:school_app/core/constants/app_packages.dart';

class HomeGreetingTitle extends StatelessWidget {
  const HomeGreetingTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: 'مرحباً بك:',
              style:
                  Theme.of(context).textTheme.bodySmall!.copyWith(fontSize: 20),
            ),
            TextSpan(
              text: '',
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    color: AppColors.white,
                    fontSize: 20,
                  ),
            )
          ],
        ),
      ),
    );
  }
}
