class Complaint {
  int id;
  String type;
  String description;
  String reply;
  int student;
  dynamic user;
  DateTime createdAt;

  Complaint({
    required this.id,
    required this.type,
    required this.description,
    required this.reply,
    required this.student,
    required this.user,
    required this.createdAt,
  });

  factory Complaint.fromJson(Map<String, dynamic> json) => Complaint(
        id: json["id"],
        type: json["type"],
        description: json["description"],
        reply: json["reply"],
        student: json["student"],
        user: json["user"],
        createdAt: DateTime.parse(json["created_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "type": type,
        "description": description,
        "reply": reply,
        "student": student,
        "user": user,
        "created_at": createdAt.toIso8601String(),
      };
}
