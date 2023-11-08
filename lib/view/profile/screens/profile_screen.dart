import 'package:school_app/core/constants/app_packages.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: mainAppBar(title: 'الملف الشخصي'),
        drawer: const AppDrawer(),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 4,
                  child: SizedBox(
                    child: Stack(
                      clipBehavior: Clip.none,
                      fit: StackFit.expand,
                      children: [
                        CircleAvatar(
                            child: ClipOval(
                          child: Image.asset(
                            'assets/images/user-default.png',
                            fit: BoxFit.fill,
                          ),
                        )),
                        Positioned(
                          bottom: -10,
                          left: 0,
                          right: -90,
                          child: AppIconButton(
                            onPressed: () {
                              showModalBottomSheet(
                                  context: context,
                                  backgroundColor: AppColors.primary,
                                  constraints: BoxConstraints(
                                    maxWidth: MediaQuery.of(context).size.width,
                                  ),
                                  builder: (context) =>
                                      const ChooseProfileImageBottomSheet());
                            },
                            circleShape: true,
                            icon: const Icon(
                              FontAwesomeIcons.solidPenToSquare,
                              color: AppColors.white,
                              size: 22,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const VerticalSizedBox(30),
                Expanded(
                  flex: 7,
                  child: SingleChildScrollView(
                    child: Form(
                      child: Column(
                        children: [
                          AppTextFormField(
                            controller: TextEditingController(),
                            keyboardType: TextInputType.text,
                            hintText: 'العنوان',
                          ),
                          const VerticalSizedBox(15),
                          AppTextFormField(
                            controller: TextEditingController(),
                            keyboardType: TextInputType.phone,
                            hintText: 'رقم الموبايل',
                          ),
                          const VerticalSizedBox(15),
                          AppTextFormField(
                            controller: TextEditingController(),
                            keyboardType: TextInputType.visiblePassword,
                            hintText: 'كلمة السر',
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const VerticalSizedBox(20),
                AppButton(
                  onPressed: () {},
                  text: 'تحديث معلوماتك',
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
