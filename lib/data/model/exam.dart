import 'package:school_app/core/constants/app_packages.dart';

class Exam {
  int id;
  String name;
  List<SubjectExam> subjectExams;

  Exam({
    required this.id,
    required this.name,
    required this.subjectExams,
  });

  factory Exam.fromJson(Map<String, dynamic> json) => Exam(
        id: json["id"],
        name: json["name"],
        subjectExams: List<SubjectExam>.from(
            json["exams"].map((x) => SubjectExam.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "exams": List<dynamic>.from(subjectExams.map((x) => x.toJson())),
      };
}
