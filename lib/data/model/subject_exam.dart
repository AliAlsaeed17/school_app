class SubjectExam {
  int id;
  DateTime date;
  String subject;
  String maxScore;
  String minScore;
  String studentScore;

  SubjectExam({
    required this.id,
    required this.date,
    required this.subject,
    required this.maxScore,
    required this.minScore,
    required this.studentScore,
  });

  factory SubjectExam.fromJson(Map<String, dynamic> json) => SubjectExam(
        id: json["id"],
        date: DateTime.parse(json["date"]),
        subject: json["subject"],
        maxScore: json["max_score"],
        minScore: json["min_score"],
        studentScore: json["student_score"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "date": date.toIso8601String(),
        "subject": subject,
        "max_score": maxScore,
        "min_score": minScore,
        "student_score": studentScore,
      };
}
