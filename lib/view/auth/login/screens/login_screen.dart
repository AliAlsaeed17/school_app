import 'package:school_app/core/constants/app_packages.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late TextEditingController phoneController;
  late TextEditingController passwordController;
  final _keyForm = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    phoneController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  void dispose() {
    phoneController.clear();
    phoneController.dispose();
    passwordController.clear();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //final authCubit = BlocProvider.of<AuthCubit>(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 100),
          child: Column(
            children: [
              Text(
                "مرحباً بعودتك!",
                style: AppTheme.themeArabic.textTheme.titleLarge,
              ),
              const VerticalSizedBox(30),
              Container(
                height: 180,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(AppImages.schoolSchildren),
                  ),
                ),
              ),
              const VerticalSizedBox(20),
              Form(
                key: _keyForm,
                child: Column(
                  children: [
                    AppTextFormField(
                      controller: phoneController,
                      hintText: 'أدخل رقم هاتفك',
                    ),
                    const VerticalSizedBox(20),
                    AppTextFormField(
                      controller: passwordController,
                      hintText: 'أدخل كلمة المرور الخاصة بك',
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                      suffix: IconButton(
                        icon: const Icon(
                            3 == 4 ? Icons.visibility_off : Icons.visibility),
                        color: AppColors.iconColor,
                        onPressed: () {},
                      ),
                    ),
                    const VerticalSizedBox(40),
                    AppButton(
                      text: 'تسجيل الدخول',
                      onPressed: () {
                        // if (_keyForm.currentState!.validate()) {
                        //   authCubit.login(
                        //     phoneController.text.trim(),
                        //     passwordController.text.trim(),
                        //   );
                        // }
                        Navigator.pushNamed(context, AppRoutes.homeScreen);
                      },
                    ),
                    const VerticalSizedBox(10),
                    AppButton(
                      text: 'طلب تسجيل',
                      onPressed: () {
                        Navigator.pushNamed(context, AppRoutes.registerScreen);
                      },
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
