// ignore_for_file: must_be_immutable

import 'package:school_app/core/constants/app_packages.dart';

class ComplaintItem extends StatelessWidget {
  ComplaintItem({super.key, required this.complaint});

  Complaint complaint;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.pushNamed(context, AppRoutes.complaintScreen,
          arguments: complaint),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
        decoration: BoxDecoration(
          color: AppColors.complaint,
          borderRadius: AppSizes.radius15,
        ),
        child: Row(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: AppSizes.radius10,
                ),
                child: const Icon(
                  Icons.feedback,
                  color: AppColors.white,
                  size: 40,
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      complaint.type,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            complaint.description,
                            style: Theme.of(context).textTheme.bodyLarge,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
