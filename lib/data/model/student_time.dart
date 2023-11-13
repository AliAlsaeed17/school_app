class StudentTime {
  int id;
  DateTime date;
  String status;
  String description;
  String createdAt;

  StudentTime({
    required this.id,
    required this.date,
    required this.status,
    required this.description,
    required this.createdAt,
  });

  factory StudentTime.fromJson(Map<String, dynamic> json) => StudentTime(
        id: json["id"],
        date: DateTime.parse(json["date"]),
        status: json["status"],
        description: json["description"],
        createdAt: json["created_at"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "date":
            "${date.year.toString().padLeft(4, '0')}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}",
        "status": status,
        "description": description,
        "created_at": createdAt,
      };
}
