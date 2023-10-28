main() {
  Color c = Color.blue;
  print(Color.green.index == 1);

  switch(c) {
    case Color.green:
    print('green');
    break;
    case Color.blue:
    print('blue');
    break;
    case Color.red:
    print('red');
    break;
    default:
    print('No match !!');
  }
}

// 列挙子は宣言された順にインデックスが割り振られていてindexで参照できる。
// enumを継承できなかったり（mixinにも使えない)、enumのインスタンスを自前で生成できない（定数のみしか使えない）
enum Color { red, green, blue}