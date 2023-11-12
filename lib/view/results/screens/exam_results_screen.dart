import 'package:school_app/core/constants/app_packages.dart';
import 'package:school_app/view/results/widgets/result_item.dart';

class ExamResultsScreen extends StatefulWidget {
  const ExamResultsScreen({super.key});

  @override
  State<ExamResultsScreen> createState() => _ExamResultsScreenState();
}

class _ExamResultsScreenState extends State<ExamResultsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mainAppBar(),
      drawer: const AppDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
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
                                "لايوجد نتائج!",
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
                            return ResultItem();
                          },
                          separatorBuilder: (context, index) =>
                              const VerticalSizedBox(10),
                          itemCount: 10,
                        ),
                      ),
              ),
      ),
      bottomNavigationBar: const AppBottomNavigationBar(),
    );
  }
}
