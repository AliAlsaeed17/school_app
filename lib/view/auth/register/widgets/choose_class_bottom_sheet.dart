import 'package:school_app/core/constants/app_packages.dart';

class ChooseClassBottomSheet extends StatelessWidget {
  const ChooseClassBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      height: MediaQuery.of(context).size.height * .4,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: AppSizes.radiusTop45,
      ),
      child: Center(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      "الصفوف",
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                            color: AppColors.black,
                            fontWeight: FontWeight.w800,
                          ),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "الأقساط",
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                            color: AppColors.black,
                            fontWeight: FontWeight.w800,
                          ),
                    ),
                  ),
                ],
              ),
              const VerticalSizedBox(10),
              Expanded(
                child: ListView.separated(
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {},
                      child: GradesItem(
                        grade: Grade(
                          id: 4,
                          name: 'name',
                          fee: 488839,
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) =>
                      const VerticalSizedBox(10),
                  itemCount: 8,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
