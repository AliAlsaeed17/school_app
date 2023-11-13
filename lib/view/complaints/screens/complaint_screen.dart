import 'package:school_app/core/constants/app_packages.dart';

class ComplaintScreen extends StatelessWidget {
  const ComplaintScreen({super.key, required this.complaint});

  final Complaint? complaint;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mainAppBar(title: ''),
      drawer: const AppDrawer(),
      body: Container(
        padding: AppSizes.padding15,
        height: ResponsiveHelper.screenHeight(context),
        child: SingleChildScrollView(
          child: Column(
            children: [
              PageTitle(
                  title: complaint != null
                      ? "الشكوى رقم #${complaint!.id}"
                      : "اضافة شكوى"),
              TextFormField(
                readOnly: complaint != null ? true : false,
                controller: complaint != null
                    ? TextEditingController(
                        text: complaint!.type,
                      )
                    : TextEditingController(),
                keyboardType: TextInputType.name,
                decoration:
                    InputDecoration(hintText: complaint != null ? '' : 'النوع')
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
                readOnly: complaint != null ? true : false,
                controller: complaint != null
                    ? TextEditingController(
                        text: complaint!.description,
                      )
                    : TextEditingController(),
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                        hintText: complaint != null ? '' : 'التوصيف')
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
                readOnly: complaint != null ? true : false,
                controller: complaint != null
                    ? TextEditingController(
                        text: complaint!.reply.isEmpty
                            ? 'لم يتم الرد بعد!'
                            : complaint!.reply,
                      )
                    : TextEditingController(),
                keyboardType: TextInputType.visiblePassword,
                decoration:
                    InputDecoration(hintText: complaint != null ? '' : 'الرد')
                        .applyDefaults(
                  Theme.of(context).inputDecorationTheme.copyWith(
                        hintStyle: complaint != null
                            ? complaint!.reply.isEmpty
                                ? Theme.of(context)
                                    .textTheme
                                    .titleMedium!
                                    .copyWith(color: AppColors.error)
                                : Theme.of(context)
                                    .textTheme
                                    .titleMedium!
                                    .copyWith(
                                      color: AppColors.lightBlack,
                                    )
                            : Theme.of(context).textTheme.titleMedium!.copyWith(
                                  color: AppColors.lightBlack,
                                ),
                      ),
                ),
                maxLines: 8,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const AppBottomNavigationBar(),
    );
  }
}
