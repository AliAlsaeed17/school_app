import 'package:school_app/core/constants/app_packages.dart';
import 'package:school_app/view/bus/widgets/bus_item.dart';

class BusScreen extends StatefulWidget {
  const BusScreen({super.key});

  @override
  State<BusScreen> createState() => _BusScreenState();
}

class _BusScreenState extends State<BusScreen> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: mainAppBar(title: 'الباص'),
        drawer: const AppDrawer(),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Expanded(
                child: RefreshIndicator(
                  onRefresh: () async {},
                  child: 4 == 5
                      ? Center(
                          child: Text(
                            "لايوجد باصات!",
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(color: AppColors.lightBlack),
                          ),
                        )
                      : ListView.separated(
                          itemBuilder: (context, index) {
                            return BusItem(
                              bus: Bus(
                                id: 2,
                                name: 'Ali',
                                assistantName: 'Ahmad',
                                phone: '0956983782',
                                plateNumber: '38728728',
                                road: 'road',
                                price: 'price',
                                createdAt: DateTime.now(),
                              ),
                            );
                          },
                          separatorBuilder: (context, index) =>
                              const VerticalSizedBox(10),
                          itemCount: 6,
                        ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: const AppBottomNavigationBar(),
      ),
    );
  }
}
