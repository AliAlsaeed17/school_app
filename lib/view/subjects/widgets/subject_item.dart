import 'package:school_app/core/constants/app_packages.dart';

class SubjectItem extends StatelessWidget {
  const SubjectItem({super.key, required this.subject});

  final Subject subject;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: ClipRRect(
        borderRadius: AppSizes.radius22,
        child: CachedNetworkImage(
          imageUrl: subject.image,
          placeholder: (context, url) =>
              const Center(child: LoadingItem(color: AppColors.secondary)),
          imageBuilder: (context, imageProvider) {
            return Stack(
              children: [
                Opacity(
                  opacity: .4,
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: imageProvider,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    subject.name,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: AppColors.white,
                          fontSize: 25,
                        ),
                  ),
                ),
              ],
            );
          },
          errorWidget: (context, url, error) => const Icon(Icons.error),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
