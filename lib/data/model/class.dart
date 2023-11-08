class Class {
  String order;
  String subject;

  Class({
    required this.order,
    required this.subject,
  });

  factory Class.fromJson(Map<String, dynamic> json) => Class(
        order: json["order"],
        subject: json["subject"],
      );

  Map<String, dynamic> toJson() => {
        "order": order,
        "subject": subject,
      };
}
