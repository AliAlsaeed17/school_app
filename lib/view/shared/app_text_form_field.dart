import 'package:school_app/core/constants/app_packages.dart';

class AppTextFormField extends StatelessWidget {
  const AppTextFormField({
    super.key,
    this.controller,
    this.hintText = '',
    this.keyboardType = TextInputType.name,
    this.obscureText = false,
    this.textAlign = TextAlign.start,
    this.autofocus = false,
    this.maxLines = 1,
    this.readOnly = false,
    this.formatters,
    this.suffix,
    this.onTap,
    this.onChanged,
  });

  final String hintText;
  final TextEditingController? controller;
  final TextInputType keyboardType;
  final bool obscureText;
  final TextAlign textAlign;
  final bool autofocus;
  final int maxLines;
  final bool readOnly;
  final List<TextInputFormatter>? formatters;
  final Widget? suffix;
  final Function()? onTap;
  final Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: onTap,
      autofocus: autofocus,
      inputFormatters: formatters,
      readOnly: readOnly,
      controller: controller,
      keyboardType: keyboardType,
      obscureText: obscureText,
      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
            color: AppColors.black,
          ),
      textAlign: textAlign,
      maxLines: maxLines,
      decoration: (const InputDecoration())
          .applyDefaults(Theme.of(context).inputDecorationTheme)
          .copyWith(
            hintText: hintText,
            suffixIcon: suffix,
          ),
      onChanged: onChanged,
    );
  }
}
