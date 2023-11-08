import 'package:school_app/core/constants/app_packages.dart';
import 'package:school_app/view/auth/register/widgets/choose_class_bottom_sheet.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: mainAppBar(title: 'تسجيل طالب في المدرسة', showDrawer: false),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const AppTextFormField(
                  keyboardType: TextInputType.text,
                  hintText: 'اسم الطالب',
                ),
                const VerticalSizedBox(10),
                const AppTextFormField(
                  keyboardType: TextInputType.text,
                  hintText: 'اسم العائلة',
                ),
                const VerticalSizedBox(10),
                const AppTextFormField(
                  keyboardType: TextInputType.text,
                  hintText: 'اسم الأب',
                ),
                const VerticalSizedBox(10),
                const AppTextFormField(
                  keyboardType: TextInputType.text,
                  hintText: 'اسم الأم',
                ),
                const VerticalSizedBox(10),
                const AppTextFormField(
                  keyboardType: TextInputType.text,
                  hintText: 'جنسية الأب',
                ),
                const VerticalSizedBox(10),
                const AppTextFormField(
                  keyboardType: TextInputType.text,
                  hintText: 'جنسية الأم',
                ),
                const VerticalSizedBox(10),
                const AppTextFormField(
                  keyboardType: TextInputType.text,
                  hintText: 'جنسية الطالب',
                ),
                const VerticalSizedBox(10),
                const AppTextFormField(
                  keyboardType: TextInputType.text,
                  hintText: 'عمل الأب (اختياري)',
                ),
                const VerticalSizedBox(10),
                const AppTextFormField(
                  keyboardType: TextInputType.text,
                  hintText: 'عمل الأم (اختياري)',
                ),
                const VerticalSizedBox(10),
                AppButton(
                  onPressed: () async {
                    await showModalBottomSheet(
                      context: context,
                      constraints: BoxConstraints(
                        maxWidth: MediaQuery.of(context).size.width,
                      ),
                      builder: (context) => const ChooseClassBottomSheet(),
                    );
                  },
                  child: Text(
                    'اختر الصف',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ),
                const VerticalSizedBox(10),
                const AppTextFormField(
                  keyboardType: TextInputType.datetime,
                  hintText: 'تاريخ الولادة',
                ),
                const VerticalSizedBox(10),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: PaymentMethodItem(
                          isSelected: true,
                          icon: Icons.money,
                          method: 'دفع مباشر',
                          onTap: () {},
                        ),
                      ),
                      Expanded(
                        child: PaymentMethodItem(
                          icon: Icons.payment,
                          method: 'تحويل بنكي',
                          onTap: () {},
                        ),
                      )
                    ],
                  ),
                ),
                const VerticalSizedBox(10),
                const AppTextFormField(
                  keyboardType: TextInputType.phone,
                  hintText: 'رقم هاتف للتواصل',
                ),
                const VerticalSizedBox(10),
                AppButton(
                  onPressed: () {},
                  text: 'حفظ',
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
