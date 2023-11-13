import 'package:school_app/core/constants/app_packages.dart';

class ComplaintsList extends StatelessWidget {
  const ComplaintsList({super.key, required this.complaints});

  final List<Complaint> complaints;

  @override
  Widget build(BuildContext context) {
    return complaints.isEmpty
        ? Center(
            child: Text(
              "لايوجد شكاوى!",
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(color: AppColors.lightBlack),
            ),
          )
        : ListView.separated(
            itemBuilder: (context, index) {
              return ComplaintItem(
                complaint: complaints[index],
              );
            },
            separatorBuilder: (context, index) => const VerticalSizedBox(10),
            itemCount: complaints.length,
          );
  }
}
