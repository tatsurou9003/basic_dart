main() {
  Rectangle rect = Rectangle(3, 4, 20, 15);
  print('right = ${rect.right}');  // getterが呼ばれる
  rect.right = 12;  // rightの変更でsetterが呼ばれる
  print('left = ${rect.left}');  // leftの結果が変わる
}

class Rectangle {
  int left, top, width, height;

  Rectangle(this.left, this.top, this.width, this.height);

  // getter/setterは外部からのアクセスを防ぎカプセル化することでメリットが向上するため、private変数の使用が望ましい
  // getter:rightのparameterを参照可能
  int get right => left + width;
  
  // setter:parameterを代入時にleftを計算
  set right(int value) => left = value - width;

  int get bottom => top + height;
  set bottom(int value) => top = value - height;
}