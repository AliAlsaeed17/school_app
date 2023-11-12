import 'package:school_app/core/constants/app_packages.dart';

class BusItem extends StatelessWidget {
  const BusItem({super.key, required this.bus});

  final Bus bus;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 270,
      padding: const EdgeInsets.all(15),
      //margin: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        color: AppColors.lightGray,
        borderRadius: AppSizes.radiusTopLeft45,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 4,
            child: LayoutBuilder(
              builder: (context, constraints) => GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing:
                    ResponsiveHelper.horizontalSpacerHeight(context),
                mainAxisSpacing: ResponsiveHelper.verticalSpacerHeight(context),
                childAspectRatio: constraints.maxWidth / constraints.maxHeight,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  BusItemListTile(
                    title: "اسم السائق",
                    subTitle: bus.name,
                  ),
                  BusItemListTile(
                    title: "اسم المساعد",
                    subTitle: bus.assistantName,
                  ),
                  BusItemListTile(
                    title: "رقم السائق",
                    subTitle: bus.phone,
                  ),
                  BusItemListTile(
                    title: "رقم لوحة الباص",
                    subTitle: bus.plateNumber,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: AppButton(
              onPressed: () {},
              backgroundColor: AppColors.bus,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Ionicons.send,
                    color: AppColors.white,
                    size: 25,
                  ),
                  HorizontalSizedBox(8),
                  Text(
                    ' إرسال شكوى',
                    style: UITextStyle.titleBold,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
