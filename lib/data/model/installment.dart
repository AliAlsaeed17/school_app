class Installment {
  int id;
  String statement;
  int amount;
  String type;
  String createdAt;

  Installment({
    required this.id,
    required this.statement,
    required this.amount,
    required this.type,
    required this.createdAt,
  });

  factory Installment.fromJson(Map<String, dynamic> json) => Installment(
        id: json["id"],
        statement: json["statement"],
        amount: json["amount"],
        type: json["type"],
        createdAt: json["created_at"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "statement": statement,
        "amount": amount,
        "type": type,
        "created_at": createdAt,
      };
}
