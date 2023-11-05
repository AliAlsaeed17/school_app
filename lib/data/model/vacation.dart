class Vacation {
  int id;
  String day;
  String month;
  String title;
  DateTime createdAt;

  Vacation({
    required this.id,
    required this.day,
    required this.month,
    required this.title,
    required this.createdAt,
  });

  factory Vacation.fromJson(Map<String, dynamic> json) => Vacation(
        id: json["id"],
        day: json["day"],
        month: json["month"],
        title: json["title"],
        createdAt: DateTime.parse(json["created_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "day": day,
        "month": month,
        "title": title,
        "created_at": createdAt.toIso8601String(),
      };
}
