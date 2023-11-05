import 'package:school_app/core/constants/app_packages.dart';

class VacationsScreen extends StatefulWidget {
  const VacationsScreen({super.key});

  @override
  State<VacationsScreen> createState() => _VacationsScreenState();
}

class _VacationsScreenState extends State<VacationsScreen> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: mainAppBar(),
        drawer: const AppDrawer(),
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: 1 == 2
              ? SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child: ListView.separated(
                    itemBuilder: (context, index) {
                      return const VacationShimmer();
                    },
                    separatorBuilder: (context, index) =>
                        const VerticalSizedBox(10),
                    itemCount: 10,
                  ),
                )
              : RefreshIndicator(
                  onRefresh: () async {
                    //homeworksController.getHomeworks();
                  },
                  child: 7 == 4
                      ? SizedBox(
                          height: MediaQuery.of(context).size.height,
                          child: Center(
                            child: ListView(
                              shrinkWrap: true,
                              children: [
                                Text(
                                  "لايوجد عطل!",
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleLarge!
                                      .copyWith(
                                        fontSize: 16,
                                        color: AppColors.lightBlack,
                                      ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        )
                      : SizedBox(
                          child: ListView.separated(
                            itemBuilder: (context, index) {
                              return const VacationItem();
                            },
                            separatorBuilder: (context, index) =>
                                const VerticalSizedBox(10),
                            itemCount: 10,
                          ),
                        ),
                ),
        ),
        bottomNavigationBar: const AppBottomNavigationBar(),
      ),
    );
  }
}
