import 'package:school_app/core/constants/app_packages.dart';

class DayProgram {
  int id;
  String day;
  List<Class> classes;
  DateTime createdAt;

  DayProgram({
    required this.id,
    required this.day,
    required this.classes,
    required this.createdAt,
  });

  factory DayProgram.fromJson(Map<String, dynamic> json) => DayProgram(
        id: json["id"],
        day: json["day"],
        classes:
            List<Class>.from(json["classes"].map((x) => Class.fromJson(x))),
        createdAt: DateTime.parse(json["created_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "day": day,
        "classes": List<dynamic>.from(classes.map((x) => x.toJson())),
        "created_at": createdAt.toIso8601String(),
      };
}
