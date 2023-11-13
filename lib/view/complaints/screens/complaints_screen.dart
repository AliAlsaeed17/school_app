import 'package:school_app/core/constants/app_packages.dart';

class ComplaintsScreen extends StatefulWidget {
  const ComplaintsScreen({super.key});

  @override
  State<ComplaintsScreen> createState() => _ComplaintsScreenState();
}

class _ComplaintsScreenState extends State<ComplaintsScreen> {
  @override
  void initState() {
    BlocProvider.of<ComplaintsCubit>(context).getComplaints();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mainAppBar(title: 'الشكاوى'),
      drawer: const AppDrawer(),
      body: Container(
        padding: AppSizes.padding15,
        height: ResponsiveHelper.screenHeight(context),
        child: BlocBuilder<ComplaintsCubit, ComplaintsState>(
          bloc: BlocProvider.of<ComplaintsCubit>(context),
          builder: (context, state) {
            if (state is ComplaintsLoading) {
              return const ComplaintsShimmerList();
            } else if (state is ComplaintsLoadingSuccess) {
              return RefreshIndicator(
                onRefresh: () async =>
                    context.read<ComplaintsCubit>().getComplaints(),
                child: ComplaintsList(complaints: state.complaints),
              );
            } else if (state is ComplaintsLoadingError) {
              return ErrorMessage(message: state.errormsg);
            }
            return const SizedBox.shrink();
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () =>
            Navigator.pushNamed(context, AppRoutes.complaintScreen),
        backgroundColor: AppColors.white,
        child: const Icon(
          Icons.add,
          color: AppColors.complaint,
          size: 40,
        ),
      ),
      bottomNavigationBar: const AppBottomNavigationBar(),
    );
  }
}
