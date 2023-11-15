import 'package:school_app/core/constants/app_packages.dart';

class VacationsList extends StatelessWidget {
  const VacationsList({super.key, required this.vacations});

  final List<Vacation> vacations;

  @override
  Widget build(BuildContext context) {
    return vacations.isEmpty
        ? Center(
            child: ListView(
              shrinkWrap: true,
              children: [
                Text(
                  "لايوجد عطل!",
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        fontSize: 16,
                        color: AppColors.lightBlack,
                      ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          )
        : AnimatedItemsList(
            widgets: vacations
                .map((vacation) => VacationItem(
                      vacation: vacation,
                    ))
                .toList(),
          );
  }
}
