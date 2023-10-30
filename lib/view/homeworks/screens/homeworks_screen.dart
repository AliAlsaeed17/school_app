import 'package:school_app/core/constants/app_packages.dart';

class HomeworksScreen extends StatefulWidget {
  const HomeworksScreen({super.key});

  @override
  State<HomeworksScreen> createState() => _HomeworksScreenState();
}

class _HomeworksScreenState extends State<HomeworksScreen> {
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
                      return const HomeworkShimmer();
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
                  child: 'true' == true
                      ? SizedBox(
                          height: MediaQuery.of(context).size.height,
                          child: Center(
                            child: ListView(
                              shrinkWrap: true,
                              children: [
                                Text(
                                  "لايوجد وظائف!",
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
                              return const HomeworkItem();
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
