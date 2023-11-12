import 'package:school_app/core/constants/app_packages.dart';

class HomeworksShimmerList extends StatelessWidget {
  const HomeworksShimmerList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        return const HomeworkShimmer();
      },
      separatorBuilder: (context, index) => const VerticalSizedBox(10),
      itemCount: 4,
    );
  }
}
