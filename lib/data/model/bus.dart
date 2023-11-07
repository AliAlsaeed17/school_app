class Bus {
  int id;
  String name;
  String assistantName;
  String phone;
  String plateNumber;
  String road;
  String price;
  DateTime createdAt;

  Bus({
    required this.id,
    required this.name,
    required this.assistantName,
    required this.phone,
    required this.plateNumber,
    required this.road,
    required this.price,
    required this.createdAt,
  });

  factory Bus.fromJson(Map<String, dynamic> json) => Bus(
        id: json["id"],
        name: json["name"],
        assistantName: json["assistant_name"],
        phone: json["phone"],
        plateNumber: json["plate_number"],
        road: json["road"],
        price: json["price"],
        createdAt: DateTime.parse(json["created_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "assistant_name": assistantName,
        "phone": phone,
        "plate_number": plateNumber,
        "road": road,
        "price": price,
        "created_at": createdAt.toIso8601String(),
      };
}
