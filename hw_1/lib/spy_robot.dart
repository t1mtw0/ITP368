import "package:hw_1/robot.dart";

class SpyRobot extends Robot {
  Map<String, String> _secrets;
  SpyRobot({required String name, required int age}) : _secrets = {}, super(name: name, age: age);

  @override
  void speak() {
    print("Hello, my name is $name and my age is $age! I am a spy robot!");
  }

  bool saveSecret({required String codeWord, required String message}) {
    if (!hasSecret(codeWord)) {
      _secrets[codeWord] = message;
      return true;
    }
    return false;
  }

  bool hasSecret(String codeWord) {
    return _secrets.containsKey(codeWord);
  }

  bool removeSecret(String codeWord) {
    if (hasSecret(codeWord)) {
      _secrets.remove(codeWord);
      return true;
    }
    return false;
  }

  void sayAllSecrets() {
    if (_secrets.isEmpty) {
      print("I don't have any secrets to say.");
      return;
    }
    for (var s in _secrets.keys) {
      print("The secret for $s is ${_secrets[s]}");
    }
  }
}