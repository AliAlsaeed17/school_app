import 'package:school_app/core/constants/app_packages.dart';

class Exam {
  int id;
  String name;
  List<SubjectExam> exams;

  Exam({
    required this.id,
    required this.name,
    required this.exams,
  });

  factory Exam.fromJson(Map<String, dynamic> json) => Exam(
        id: json["id"],
        name: json["name"],
        exams: List<SubjectExam>.from(
            json["exams"].map((x) => SubjectExam.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "exams": List<dynamic>.from(exams.map((x) => x.toJson())),
      };
}
