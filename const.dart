main() {
  final a = 1; // 初期化時のみ代入可能

  const b =1; //  compile時に定数になる

  List c = const [1,2,3]; // c.add(1); 配列の中身は変更できないためerror

  print('$a, $b, $c');

  // final < const で厳しい
}