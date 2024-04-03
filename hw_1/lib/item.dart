enum ItemWeight {
  light,
  normal,
  heavy,
}

class Item {
  final String name;
  final ItemWeight weight;
  final String? description;

  Item({required String this.name, required ItemWeight this.weight, String? this.description});
}