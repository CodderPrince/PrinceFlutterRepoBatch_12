abstract class Animal {
  String _name;

  Animal(this._name);

  String getName() => _name;

  void makeSound();
}

class Lion extends Animal {
  double _maneSize;

  Lion(String name, this._maneSize) : super(name);

  double get maneSize => _maneSize;

  set maneSize(double size) {
    if (size < 0) {
      throw ArgumentError("Mane size cannot be negative!");
    }
    _maneSize = size;
  }

  @override
  void makeSound() {
    print("Roar!");
  }
}

class Elephant extends Animal {
  double _trunkLength;

  Elephant(String name, this._trunkLength) : super(name);

  double get trunkLength => _trunkLength;

  set trunkLength(double length) {
    if (length < 0) {
      throw ArgumentError("Trunk length cannot be negative!");
    }
    _trunkLength = length;
  }

  @override
  void makeSound() {
    print("Trumpet!");
  }
}

class Parrot extends Animal {
  int _vocabularySize;

  Parrot(String name, this._vocabularySize) : super(name);

  int get vocabularySize => _vocabularySize;

  set vocabularySize(int size) {
    if (size < 0) {
      throw ArgumentError("Vocabulary size cannot be negative!");
    }
    _vocabularySize = size;
  }

  @override
  void makeSound() {
    print("Squawk! Hello!");
  }
}

void main() {
  List<Animal> zoo = [
    Lion("Simba", 25.5),
    Elephant("Dumbo", 150.0),
    Parrot("Polly", 50),
  ];

  for (var animal in zoo) {
    print("Name: ${animal.getName()}");
    if (animal is Lion) {
      print("Mane Size: ${animal.maneSize}");
    } else if (animal is Elephant) {
      print("Trunk Length: ${animal.trunkLength}");
    } else if (animal is Parrot) {
      print("Vocabulary Size: ${animal.vocabularySize}");
    }
    animal.makeSound();
    print("------");
  }
}
