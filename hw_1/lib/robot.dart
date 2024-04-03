class Robot {
  String name;
  int age;
  bool _on;

  Robot({required String this.name, required int this.age}) : _on = false;

  bool isOn() {
    return _on;
  }

  void power(bool onOrOff) {
    this._on = onOrOff;
  }

  void speak() {
    print("Hello, my name is $name and my age is $age!");
  }
}