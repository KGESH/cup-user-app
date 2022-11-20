class DonateOptionItem {
  late final int id;
  late final String name;
  late final String imageUrl;
  late final bool selected;
  late final int amount;

  DonateOptionItem({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.selected,
    required this.amount,
  });

  factory DonateOptionItem.fromJson(Map<String, dynamic> json) {
    return DonateOptionItem(
      id: json['id'],
      name: json['name'],
      imageUrl: json['imageUrl'],
      selected: json['selected'],
      amount: json['amount'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'imageUrl': imageUrl,
      'selected': selected,
      'amount': amount,
    };
  }
}
