class TeacherNote {
  int id;
  String teacher;
  String subject;
  String text;
  int isHidden;
  String type;
  DateTime createdAt;

  TeacherNote({
    required this.id,
    required this.teacher,
    required this.subject,
    required this.text,
    required this.isHidden,
    required this.type,
    required this.createdAt,
  });

  factory TeacherNote.fromJson(Map<String, dynamic> json) => TeacherNote(
        id: json["id"],
        teacher: json["teacher"],
        subject: json["subject"],
        text: json["text"],
        isHidden: json["is_hidden"],
        type: json["type"],
        createdAt: DateTime.parse(json["created_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "teacher": teacher,
        "subject": subject,
        "text": text,
        "is_hidden": isHidden,
        "type": type,
        "created_at": createdAt.toIso8601String(),
      };
}
