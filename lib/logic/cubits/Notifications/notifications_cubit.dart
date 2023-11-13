import 'package:school_app/core/constants/app_packages.dart';
import 'package:school_app/data/repositories/notifications_repo.dart';

part 'notifications_state.dart';

class NotificationsCubit extends Cubit<NotificationsState> {
  NotificationsCubit() : super(NotificationsInitial());

  NotificationsRepo notificationsRepo = NotificationsRepo();

  Future<void> getNotifications() async {
    emit(NotificationsLoading());
    try {
      List<UserNotification> notifications =
          await notificationsRepo.getNotifications();
      await Future.delayed(const Duration(milliseconds: 1000));
      emit(NotificationsLoadingSuccess(notifications: notifications));
    } catch (e) {
      emit(NotificationsLoadingError(errormsg: e.toString()));
    }
  }
}
