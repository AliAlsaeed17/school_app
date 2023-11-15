import 'package:school_app/core/constants/app_packages.dart';

class StudentTimeScreen extends StatefulWidget {
  const StudentTimeScreen({super.key});

  @override
  State<StudentTimeScreen> createState() => _StudentTimeScreenState();
}

class _StudentTimeScreenState extends State<StudentTimeScreen> {
  @override
  void initState() {
    BlocProvider.of<StudentTimeCubit>(context).getStudentTime();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mainAppBar(title: 'دوام الطالب'),
      drawer: const AppDrawer(),
      body: Container(
        padding: AppSizes.padding15,
        height: ResponsiveHelper.screenHeight(context),
        child: BlocBuilder<StudentTimeCubit, StudentTimeState>(
          bloc: BlocProvider.of<StudentTimeCubit>(context),
          builder: (context, state) {
            if (state is StudentTimeLoading) {
              return const StudentTimeShimmerList();
            } else if (state is StudentTimeLoadingSuccess) {
              return RefreshIndicator(
                onRefresh: () async =>
                    context.read<StudentTimeCubit>().getStudentTime(),
                child: StudentTimeList(studentTimes: state.studentTime),
              );
            } else if (state is StudentTimeLoadingError) {
              return ErrorMessage(message: state.errormsg);
            }
            return const SizedBox.shrink();
          },
        ),
      ),
      bottomNavigationBar: const AppBottomNavigationBar(),
    );
  }
}
