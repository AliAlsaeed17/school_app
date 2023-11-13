import 'package:school_app/core/constants/app_packages.dart';

class HomeworkItem extends StatelessWidget {
  const HomeworkItem({super.key, required this.homework});

  final Homework homework;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: AppSizes.paddingH10V5,
      decoration: const BoxDecoration(
        color: AppColors.homework,
        borderRadius: AppSizes.radius15,
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 75,
              padding: AppSizes.padding10,
              child: ClipRRect(
                borderRadius: AppSizes.radius22,
                child: CachedNetworkImage(
                  imageUrl: homework.subjectImage,
                  placeholder: (context, url) => const Center(
                      child: LoadingItem(color: AppColors.secondary)),
                  imageBuilder: (context, imageProvider) {
                    return Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: imageProvider,
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  homework.title,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                Text(
                  homework.description,
                  style: Theme.of(context).textTheme.bodyLarge,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
