import 'package:school_app/core/constants/app_packages.dart';

class BussesList extends StatelessWidget {
  const BussesList({super.key, required this.busses});

  final List<Bus> busses;

  @override
  Widget build(BuildContext context) {
    return busses.isEmpty
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
                bus: busses[index],
              );
            },
            separatorBuilder: (context, index) => VerticalSizedBox(
                ResponsiveHelper.verticalSpacerHeight(context)),
            itemCount: busses.length,
          );
  }
}
