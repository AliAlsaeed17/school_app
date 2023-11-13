import 'package:school_app/core/constants/app_packages.dart';

class TeacherNotesScreen extends StatefulWidget {
  const TeacherNotesScreen({super.key});

  @override
  State<TeacherNotesScreen> createState() => _TeacherNotesScreenState();
}

class _TeacherNotesScreenState extends State<TeacherNotesScreen> {
  @override
  void initState() {
    BlocProvider.of<TeacherNotesCubit>(context).getTeacherNotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mainAppBar(title: 'ملاحظات المعلم'),
      drawer: const AppDrawer(),
      body: Container(
        padding: AppSizes.padding15,
        height: ResponsiveHelper.screenHeight(context),
        child: BlocBuilder<TeacherNotesCubit, TeacherNotesState>(
          bloc: BlocProvider.of<TeacherNotesCubit>(context),
          builder: (context, state) {
            if (state is TeacherNotesLoading) {
              return const TeacherNoteShimmerList();
            } else if (state is TeacherNotesLoadingSuccess) {
              return RefreshIndicator(
                onRefresh: () async =>
                    BlocProvider.of<TeacherNotesCubit>(context)
                        .getTeacherNotes(),
                child: TeacherNotesList(notes: state.notes),
              );
            } else if (state is TeacherNotesLoadingError) {
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
