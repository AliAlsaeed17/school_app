import 'package:school_app/core/constants/app_packages.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        appBar: mainAppBar(),
        extendBodyBehindAppBar: true,
        drawer: const AppDrawer(),
        body: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HomeHeader(),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HomeGreetingTitle(),
                  HomeNavigationGridView(),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: const AppBottomNavigationBar(),
      ),
    );
  }
}
