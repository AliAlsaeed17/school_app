import 'package:school_app/core/constants/app_api_links.dart';

class Homework {
  int id;
  String title;
  String description;
  int classroomId;
  int teacherId;
  int subjectId;
  String subjectImage;
  DateTime createdAt;
  int studentId;

  Homework({
    required this.id,
    required this.title,
    required this.description,
    required this.classroomId,
    required this.teacherId,
    required this.subjectId,
    required this.subjectImage,
    required this.createdAt,
    required this.studentId,
  });

  factory Homework.fromJson(Map<String, dynamic> json) => Homework(
        id: json["id"],
        title: json["title"],
        description: json["description"],
        classroomId: json["classroom_id"],
        teacherId: json["teacher_id"] ?? 0,
        subjectId: json["subject_id"],
        subjectImage: json["subject_image"] != null
            ? AppApiLinks.storageBaseUrl + json["subject_image"]
            : '',
        createdAt: DateTime.parse(json["created_at"]),
        studentId: json["student_id"] ?? 0,
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "description": description,
        "classroom_id": classroomId,
        "teacher_id": teacherId,
        "subject_id": subjectId,
        "subject_image": subjectImage,
        "created_at": createdAt.toIso8601String(),
        "student_id": studentId,
      };
}
