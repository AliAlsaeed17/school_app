class AppApiLinks {
//-----------------------------Root-----------------------------------
  static const baseUrl = 'http://school.brain.sy/api/v1/';
  static const storageBaseUrl = 'http://school.brain.sy/storage/';
//-----------------------------Auth-----------------------------------
  static const loginApi = '${baseUrl}login';
//----------------------------Subjects--------------------------------
  static const subjects = "${baseUrl}subjectWithHomework/1/1";
//----------------------------Homeworks-------------------------------
  static const homeworks = "${baseUrl}studentHomework/1";
//----------------------------Vacations-------------------------------
  static const vacations = "${baseUrl}vacations";
//-----------------------------Results-------------------------------
  static const exams = "${baseUrl}exams/1";
//-----------------------------Busses-------------------------------
  static const busses = "${baseUrl}deliveryBusById/2";
//-----------------------------Alerts-------------------------------
  static const alerts = "${baseUrl}alertByStudentId/28";
}
