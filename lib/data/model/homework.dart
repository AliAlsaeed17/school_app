class Homework {
  int id;
  String title;
  String description;
  int classroomId;
  int teacherId;
  int subjectId;
  DateTime createdAt;
  DateTime updatedAt;
  int studentId;

  Homework({
    required this.id,
    required this.title,
    required this.description,
    required this.classroomId,
    required this.teacherId,
    required this.subjectId,
    required this.createdAt,
    required this.updatedAt,
    required this.studentId,
  });

  factory Homework.fromJson(Map<String, dynamic> json) => Homework(
        id: json["id"],
        title: json["title"],
        description: json["description"],
        classroomId: json["classroom_id"],
        teacherId: json["teacher_id"],
        subjectId: json["subject_id"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        studentId: json["student_id"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "description": description,
        "classroom_id": classroomId,
        "teacher_id": teacherId,
        "subject_id": subjectId,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "student_id": studentId,
      };
}
