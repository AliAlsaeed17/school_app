class Alert {
  int id;
  String title;
  String description;
  int isHidden;
  String type;
  DateTime createdAt;

  Alert({
    required this.id,
    required this.title,
    required this.description,
    required this.isHidden,
    required this.type,
    required this.createdAt,
  });

  factory Alert.fromJson(Map<String, dynamic> json) => Alert(
        id: json["id"],
        title: json["title"],
        description: json["description"],
        isHidden: json["is_hidden"],
        type: json["type"],
        createdAt: DateTime.parse(json["created_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "description": description,
        "is_hidden": isHidden,
        "type": type,
        "created_at": createdAt.toIso8601String(),
      };
}
