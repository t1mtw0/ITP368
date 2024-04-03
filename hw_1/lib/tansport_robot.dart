import "package:hw_1/item.dart";
import "package:hw_1/robot.dart";
import "package:hw_1/robot_addons.dart";

class TransportRobot extends Robot implements JokingRobot, SingingRobot {
  ItemWeight weight;
  List<Item> items;

  TransportRobot.light({required String name, required int age}) : weight = ItemWeight.light, items = [], super(name: name, age: age);
  TransportRobot.normal({required String name, required int age}) : weight = ItemWeight.normal, items = [], super(name:name, age: age);
  TransportRobot.heavy({required String name, required int age}) : weight = ItemWeight.heavy, items = [], super(name: name, age: age);

  bool pickUp(Item item) {
    if (item.weight != this.weight) {
      return false;
    }
    items.add(item);
    return true;
  }

  Item? getItemWithName(String name) {
    for (var i in items) {
      if (i.name == name) {
        return i;
      }
    }
    return null;
  }

  bool remove(String name) {
    for (var i in items) {
      if (i.name == name) {
        items.remove(i);
        return true;
      }
    }
    return false;
  }

  @override
  void sayFavoriteJoke() {
    print("My favorite joke is you!");
  }

  @override
  void singFavoriteSong() {
    print("La da dee da da da!");
  }
}