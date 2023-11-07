import 'package:school_app/core/constants/app_packages.dart';

// ignore: must_be_immutable
class AppButton extends StatelessWidget {
  AppButton({
    super.key,
    this.text,
    this.backgroundColor = AppColors.secondary,
    required this.onPressed,
    this.isLoading = false,
    this.child,
  });

  final String? text;
  final Widget? child;
  final Color backgroundColor;
  final Function()? onPressed;
  bool isLoading;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: isLoading ? () {} : onPressed,
      style: Theme.of(context).elevatedButtonTheme.style!.copyWith(
            backgroundColor: MaterialStatePropertyAll<Color>(backgroundColor),
          ),
      child: Align(
        alignment: Alignment.center,
        child: text != null
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  if (isLoading) const LoadingItem(),
                  Text(
                    text!,
                    textAlign: TextAlign.center,
                    softWrap: true,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ],
              )
            : child,
      ),
    );
  }
}
