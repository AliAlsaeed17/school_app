import 'package:school_app/core/constants/app_packages.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 300,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        image: const DecorationImage(
          image: AssetImage(AppImages.schoolBuilding),
          opacity: .1,
          fit: BoxFit.cover,
        ),
        color: AppColors.primary,
        borderRadius: AppSizes.radiusBottomRight45,
      ),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const VerticalSizedBox(30),
            Stack(
              children: [
                const CircleAvatar(
                  radius: 45,
                  backgroundImage: AssetImage(AppImages.logo),
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  child: Container(
                    height: 30,
                    width: 30,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: AppColors.secondary,
                      borderRadius: AppSizes.radius25,
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.edit,
                        color: AppColors.white,
                        size: 20,
                      ),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: ListTile(
                title: Text(
                  "اسم الطالب",
                  style: Theme.of(context).textTheme.titleMedium,
                  textAlign: TextAlign.center,
                ),
                subtitle: Text(
                  "اسم الشعبة-اسم الصف",
                  style: Theme.of(context).textTheme.bodyMedium,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
