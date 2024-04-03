import 'package:hw_1/item.dart';
import 'package:hw_1/robot.dart';
import 'package:hw_1/robot_addons.dart';
import 'package:hw_1/spy_robot.dart';
import 'package:hw_1/tansport_robot.dart';

void main() {
  // robot
  final robot = Robot(name: 'Tom', age: 5);
  print(robot.name);
  print(robot.age);
  print(robot.isOn());
  robot.power(true);
  print(robot.isOn());
  robot.power(false);
  print(robot.isOn());
  robot.speak();

  // spyrobot
  final spyRobot = SpyRobot(name: 'Tom', age: 5);
  print(spyRobot is Robot);
  print(spyRobot.name);
  print(spyRobot.age);
  spyRobot.speak();
  print(spyRobot.saveSecret(codeWord: 'zulu', message: 'This is my old message!'));
  print(spyRobot.saveSecret(codeWord: 'zulu', message: 'This is my new message!'));
  print(spyRobot.hasSecret('zulu'));
  print(spyRobot.hasSecret('kilo'));
  print(spyRobot.removeSecret('zulu'));
  print(spyRobot.removeSecret('zulu'));
  spyRobot.sayAllSecrets();
  print(spyRobot.saveSecret(codeWord: 'zulu', message: 'This is my old message!'));
  print(spyRobot.saveSecret(codeWord: 'kilo', message: 'Hello there!'));
  print(spyRobot.saveSecret(codeWord: 'foxtrot', message: 'Bye bye!'));
  spyRobot.sayAllSecrets();

  // item
  final lightItem = Item(name: 'Hat', weight: ItemWeight.light, description: 'You can wear this!');
  final lightItemTwo = Item(name: 'Pen', weight: ItemWeight.light);
  final normalItem = Item(name: 'Suitcase', weight: ItemWeight.normal);
  final heavyItem = Item(name: 'Car', weight: ItemWeight.heavy);
  print(lightItem.name);
  print(lightItem.description);
  print(lightItem.weight);

  // transportation robot
  final lightTransportRobot = TransportRobot.light(name: 'Tim', age: 12);
  final normalTransportRobot = TransportRobot.normal(name: 'Jan', age: 5);
  final heavyTransportRobot = TransportRobot.heavy(name: 'Ralph', age: 10);
  print(lightTransportRobot.weight == ItemWeight.light);
  print(normalTransportRobot.weight == ItemWeight.normal);
  print(heavyTransportRobot.weight == ItemWeight.heavy);
  print(lightTransportRobot.items.isEmpty);
  print(lightTransportRobot.pickUp(lightItem));
  print(lightTransportRobot.pickUp(lightItemTwo));
  print(lightTransportRobot.pickUp(normalItem));
  print(lightTransportRobot.pickUp(heavyItem));
  print(lightTransportRobot.items[0].name);
  print(lightTransportRobot.items[1].name);
  print(lightTransportRobot is Robot);
  print(lightTransportRobot.getItemWithName('Hat')?.name ?? 'No Item');
  print(lightTransportRobot.getItemWithName('key')?.name ?? 'No Item');
  print(lightTransportRobot.remove('Hat'));
  print(lightTransportRobot.remove('Hat'));
  print(lightTransportRobot is SingingRobot);
  print(lightTransportRobot is JokingRobot);
  lightTransportRobot.sayFavoriteJoke();
  lightTransportRobot.singFavoriteSong();
}