import 'package:school_app/core/constants/app_packages.dart';

class ClassesScreen extends StatelessWidget {
  const ClassesScreen({super.key, required this.dayProgram});

  final DayProgram dayProgram;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mainAppBar(title: 'يوم ${dayProgram.day}'),
      drawer: const AppDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.separated(
                itemBuilder: (context, i) {
                  return ClassItem(
                    dayClass: dayProgram.classes[i],
                  );
                },
                separatorBuilder: (context, index) =>
                    const VerticalSizedBox(10),
                itemCount: dayProgram.classes.length,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const AppBottomNavigationBar(),
    );
  }
}
