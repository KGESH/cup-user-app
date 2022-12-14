class User {
  late final String id;
  late final String name;
  late final String badge;
  late final int donateLevel;
  late final int donateExp;
  late final int echoPoint;

  User({
    required this.id,
    required this.name,
    required this.badge,
    required this.donateLevel,
    required this.donateExp,
    required this.echoPoint,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      name: json['name'],
      badge: json['badge'],
      donateLevel: json['donateLevel'],
      donateExp: json['donateExp'],
      echoPoint: json['echoPoint'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'badge': badge,
      'donateLevel': donateLevel,
      'donateExp': donateExp,
      'echoPoint': echoPoint,
    };
  }
}
