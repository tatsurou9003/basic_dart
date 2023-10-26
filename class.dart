main() {
  // インスタンス生成
  Person person1 = Person('Yamada', 'Takayuki');
  print('${person1.firstName}, ${person1.lastName}');

  // メソッド呼び出し
  person1.greet();

  // 名前付きコンストラクタでインスタンス生成
  Person person2 = Person.origin();
  print('${person2.firstName} ${person2.lastName}');

  // static変数・メソッドはインスタンス化しなくてもクラス名.で呼び出せる
  print(Person.capacity);
  Person.staticMethod();

  // callメソッド
  print(person1());

  // 継承クラスのインスタンス生成
  Engineer engineer1 = Engineer('エン', 'ジニア');
  engineer1.greet();
}

class Person {
  String firstName;
  String lastName;

  // コンストラクタ
  Person(this.firstName, this.lastName);

  // privateインスタンス変数、_から始まる。クラス内だけでなく同一ライブラリ内からならアクセス可
  // String _member;

  // 名前付きコンストラクタ、複数のインスタンスを作成
  Person.origin()
      : firstName = '氏',
        lastName = '名';

  // メソッド
  greet() {
    print('Hello ${firstName} ${lastName}');
  }

  // staticインスタンス変数
  static const capacity = 16;

  // staticメソッド
  static void staticMethod() {
    print("Hello");
  }

  // callメソッド
  // インスタンス名()で呼び出しできる
  String call() => '$firstName $lastName';
}

// extendsでクラスの継承（親クラスのメンバが参照できる）
class Engineer extends Person {
  final String name;
  
  // 親クラスのコンストラクタを呼ぶには初期化子（:）でsuperを使う
  // メンバ変数の初期化も初期化子内で行える
  Engineer(String firstName, String lastName)
      : name = '',
        super(firstName, lastName);

  Engineer.origin()
      : name = 'hello',
        super.origin() {
    print('$firstName $lastName');
  }


  // メソッドの上書き
  @override
  greet() {
    print('I am ${firstName}${lastName}');
  }
}