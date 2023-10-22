import 'package:school_app/core/constants/app_packages.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final AuthController authController = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: AppColors.primary,
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 100),
                alignment: Alignment.center,
                child: Text(
                  "مرحباً بعودتك!",
                  style: AppTheme.themeArabic.textTheme.titleLarge,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Center(
                child: CircleAvatar(
                  radius: 90,
                  backgroundColor: AppColors.primary,
                  backgroundImage: AssetImage(AppImages.schoolSchildren),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                style: UITextStyle.titleBold.copyWith(color: Colors.black),
                controller: authController.phoneTextController,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: AppColors.white,
                  border: const OutlineInputBorder(),
                  hintText: 'أدخل رقم هاتفك',
                  hintStyle: UITextStyle.normalSmall,
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(width: 2, color: AppColors.lightBlack),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(color: AppColors.gray)),
                ),
                maxLines: 1,
              ),
              const SizedBox(height: 20),
              Obx(() {
                return TextFormField(
                  style: UITextStyle.titleBold.copyWith(color: Colors.black),
                  controller: authController.passwordTextController,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: AppColors.white,
                    suffixIcon: IconButton(
                      icon: Icon(!authController.passwordVisible.value
                          ? Icons.visibility_off
                          : Icons.visibility),
                      color: AppColors.iconColor,
                      onPressed: () {
                        authController.togglePasswordVisible();
                      },
                    ),
                    border: const OutlineInputBorder(),
                    hintText: 'أدخل كلمة المرور الخاصة بك',
                    hintStyle: UITextStyle.normalSmall,
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          width: 2, color: AppColors.lightBlack),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(color: AppColors.gray)),
                  ),
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: !authController.passwordVisible.value,
                  maxLines: 1,
                );
              }),
              const SizedBox(
                height: 40,
              ),
              Obx(() {
                return MaterialButton(
                  height: 56,
                  minWidth: Get.width,
                  color: AppColors.studentTime,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      if (authController.sending.value)
                        const CircularProgressIndicator(
                          color: AppColors.white,
                        ),
                      const Text('تسجيل الدخول', style: UITextStyle.titleBold)
                    ],
                  ),
                  onPressed: () async {
                    //await loginController.login();
                  },
                );
              }),
              const SizedBox(
                height: 10,
              ),
              Flexible(
                  child: MaterialButton(
                height: 56,
                minWidth: Get.width,
                color: AppColors.studentTime,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Text('طلب تسجيل', style: UITextStyle.titleBold)
                  ],
                ),
                onPressed: () {
                  //Get.toNamed(AppRoutes.registration);
                },
              ))
            ],
          ),
        ),
      ),
    );
  }
}
