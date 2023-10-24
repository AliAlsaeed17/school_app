import 'package:school_app/core/constants/app_packages.dart';

PreferredSizeWidget mainAppBar() {
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0.0,
    title: const Text(
      "مدرسة بناة الأجيال الخاصة",
      style: UITextStyle.boldSmall,
    ),
    centerTitle: true,
    // flexibleSpace: Container(decoration: const BoxDecoration(
    //     image:DecorationImage(image: AssetImage('assets/images/school-elements.png'),fit: BoxFit.cover,opacity: 205)),),
    leading: Builder(builder: (context) {
      return IconButton(
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
          icon: const Icon(
            Icons.dehaze_outlined,
            size: 30,
            color: AppColors.white,
          ));
    }),
    actions: const [
      /* Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: const EdgeInsets.only(top: 14.0,left: 14),
          child: Image.asset(
            'assets/images/logo.png',
          ),
        ),
      ) */
    ],
  );
}
