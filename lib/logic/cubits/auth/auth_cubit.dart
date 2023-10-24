import 'package:school_app/core/constants/app_packages.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  UserRepo userRepo = UserRepo();

  Future<void> login(String phoneNumber, String password) async {
    emit(LoadingState());
    // try {
    //   bool isUserLogged = await userRepo.login(phoneNumber, password);
    //   if (isUserLogged) {
    //     print('Hello User');
    //     emit(SuccessState());
    //   } else {
    //     emit(ErrorState(errormsg: 'Error occured'));
    //   }
    // } catch (e) {
    //   emit(ErrorState(errormsg: e.toString()));
    // }
  }
}
