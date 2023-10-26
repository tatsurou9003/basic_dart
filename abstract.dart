main() {
  Cat pochi = Cat();
  pochi.hello();
}

// abstractクラス
// 処理は定義せず、インスタンス化はできない
abstract class Animal {
  void hello();
}

// 抽象クラスを継承して処理を定義
class Cat extends Animal {
  void hello() {
    print('hello');
  }
}