import 'package:school_app/core/constants/app_packages.dart';
import 'package:school_app/data/model/installment.dart';

class InstallmentsScreen extends StatefulWidget {
  const InstallmentsScreen({super.key});

  @override
  State<InstallmentsScreen> createState() => _InstallmentsScreenState();
}

class _InstallmentsScreenState extends State<InstallmentsScreen> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: mainAppBar(title: 'الحساب المالي'),
        drawer: const AppDrawer(),
        body: Column(
          children: [
            Expanded(
              flex: 4,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Expanded(
                      child: 4 == 2
                          ? ListView.separated(
                              itemBuilder: (context, i) {
                                return const InstallmentShimmer();
                              },
                              separatorBuilder: (context, index) =>
                                  const VerticalSizedBox(10),
                              itemCount: 10,
                            )
                          : RefreshIndicator(
                              onRefresh: () async {},
                              child: ListView.separated(
                                itemBuilder: (context, i) {
                                  return InstallmentItem(
                                    installment: Installment(
                                      id: 5,
                                      statement: 'statement',
                                      amount: 48483727838,
                                      type: 'شراء',
                                      createdAt: '',
                                    ),
                                  );
                                },
                                separatorBuilder: (context, index) =>
                                    const VerticalSizedBox(10),
                                itemCount: 10,
                              ),
                            ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                color: AppColors.remainingAmount,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "المبلغ الباقي:",
                      style: Theme.of(context).textTheme.titleMedium!,
                    ),
                    const HorizontalSizedBox(10),
                    Expanded(
                      child: Text(
                        '44444444444444'.toString(),
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.titleMedium!,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const VerticalSizedBox(20),
          ],
        ),
        bottomNavigationBar: const AppBottomNavigationBar(),
      ),
    );
  }
}
