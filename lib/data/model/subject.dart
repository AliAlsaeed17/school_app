import 'package:school_app/core/constants/app_packages.dart';

class Subject {
  int id;
  String name;
  String description;
  int gradeId;
  String image;
  DateTime createdAt;
  DateTime updatedAt;
  List<Homework> homework;

  Subject({
    required this.id,
    required this.name,
    required this.description,
    required this.gradeId,
    required this.image,
    required this.createdAt,
    required this.updatedAt,
    required this.homework,
  });

  factory Subject.fromJson(Map<String, dynamic> json) => Subject(
        id: json["id"],
        name: json["name"],
        description: json["description"],
        gradeId: json["grade_id"],
        image: AppApiLinks.storageBaseUrl + json["image"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        homework: List<Homework>.from(
            json["homework"].map((x) => Homework.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "description": description,
        "grade_id": gradeId,
        "image": image,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "homework":
            List<dynamic>.from(homework.map((homework) => homework.toJson())),
      };
}
