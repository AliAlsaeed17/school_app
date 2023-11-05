class AppApiLinks {
//-----------------------------Root-----------------------------------
  static const baseUrl = 'http://school.brain.sy/api/v1/';
  static const storageBaseUrl = 'http://school.brain.sy/storage/';
//-----------------------------Auth-----------------------------------
  static const loginApi = '${baseUrl}login';
//----------------------------Subjects--------------------------------
  static const subjectWithHomework = "${baseUrl}subjectWithHomework/1/1";
//----------------------------Homeworks-------------------------------
  static const homeworks = "${baseUrl}studentHomework/1";
//----------------------------Vacations-------------------------------
  static const vacations = "${baseUrl}vacations";
}
