import 'package:school_app/core/constants/app_packages.dart';

class ComplaintScreen extends StatelessWidget {
  const ComplaintScreen({super.key, required this.complaint});

  final Complaint complaint;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: mainAppBar(title: ''),
        drawer: const AppDrawer(),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              PageTitle(title: "الشكوى رقم #${complaint.id}"),
              TextFormField(
                readOnly: true,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(hintText: complaint.type)
                    .applyDefaults(Theme.of(context)
                        .inputDecorationTheme
                        .copyWith(
                            hintStyle: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(
                                  color: AppColors.lightBlack,
                                ))),
              ),
              const VerticalSizedBox(14),
              TextFormField(
                readOnly: true,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(hintText: complaint.description)
                    .applyDefaults(Theme.of(context)
                        .inputDecorationTheme
                        .copyWith(
                            hintStyle: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(
                                  color: AppColors.lightBlack,
                                ))),
                maxLines: 8,
              ),
              const VerticalSizedBox(14),
              TextFormField(
                readOnly: true,
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  hintText: complaint.reply == ""
                      ? 'لم يتم الرد بعد!'
                      : complaint.reply,
                ).applyDefaults(Theme.of(context).inputDecorationTheme.copyWith(
                    hintStyle: complaint.reply == ""
                        ? Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(color: AppColors.error)
                        : Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(color: AppColors.lightBlack))),
                maxLines: 8,
              ),
            ],
          ),
        ),
        bottomNavigationBar: const AppBottomNavigationBar(),
      ),
    );
  }
}
