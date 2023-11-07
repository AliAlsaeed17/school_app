class UserNotification {
  int id;
  String title;
  String description;
  String student;
  int isPublic;
  String type;
  String data;
  String time;
  DateTime createdAt;

  UserNotification({
    required this.id,
    required this.title,
    required this.description,
    required this.student,
    required this.isPublic,
    required this.type,
    required this.data,
    required this.time,
    required this.createdAt,
  });

  factory UserNotification.fromJson(Map<String, dynamic> json) =>
      UserNotification(
        id: json["id"],
        title: json["title"],
        description: json["description"],
        student: json["student"],
        isPublic: json["is_public"],
        type: json["type"],
        data: json["data"],
        time: json["time"],
        createdAt: DateTime.parse(json["created_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "description": description,
        "student": student,
        "is_public": isPublic,
        "type": type,
        "data": data,
        "time": time,
        "created_at": createdAt.toIso8601String(),
      };
}
