main() {
  // mixin 
  Musician musician = Musician();
  musician.PerformerMethod();
  musician.MusicalMethod();
}

class Performer {
  Performer() {
    print('Performer');
  }
  void PerformerMethod() {
    print('PerformerMethod');
  }
}
mixin Musical {
  // mixinはコンストラクタを定義できない
  void MusicalMethod() {
    print('MusicalMethod');
  }
}

// withで繋いでmixinを使用可
class Musician extends Performer with Musical {
  Musician(): super() {
    print('Musician');
  }
} 