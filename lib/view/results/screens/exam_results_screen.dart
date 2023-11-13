import 'package:school_app/core/constants/app_packages.dart';
import 'package:school_app/view/results/widgets/exams_list.dart';

class ExamResultsScreen extends StatefulWidget {
  const ExamResultsScreen({super.key});

  @override
  State<ExamResultsScreen> createState() => _ExamResultsScreenState();
}

class _ExamResultsScreenState extends State<ExamResultsScreen> {
  @override
  void initState() {
    BlocProvider.of<ExamsCubit>(context).getExams();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mainAppBar(),
      drawer: const AppDrawer(),
      body: Container(
        padding: AppSizes.padding15,
        height: ResponsiveHelper.screenHeight(context),
        child: BlocBuilder<ExamsCubit, ExamsState>(
          bloc: BlocProvider.of<ExamsCubit>(context),
          builder: (context, state) {
            if (state is ExamsLoading) {
              return const LoadingItem(color: AppColors.secondary);
            } else if (state is ExamsLoadingSuccess) {
              return RefreshIndicator(
                onRefresh: () async => context.read<ExamsCubit>().getExams(),
                child: ExamsList(exams: state.exams),
              );
            } else if (state is ExamsLoadingError) {
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
