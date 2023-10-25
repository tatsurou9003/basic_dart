main() {
  int b = 10;
  double c = 12.3;
  String d = 'abc';
  bool e = true;
  print('$b, $c, $d, $e');

  List f = [1,2,3]; 
  f.add(4);  
  f.add(4);
  print('$f, ${f.length}, ${f[0]}');

  Set g = {'a', 'b', 'c'}; // 重複を許さない配列
  g.add('d');  
  g.add('d');  // 重複して入ることはない
  print('$g, ${g.length}, ${g.toList()[1]}'); 

  Map h = {
    'first': 'one',
    'second': 'two',
    'third': 'three'
  };
  h.addAll({'first': 'five', 'fourth': 'four'}); // 既存のkeyがあればvalueの更新もできる
  print('$h');

  Runes i =  Runes('\u2665  \u{1f605}  \u{1f60e}  \u{1f47b}  \u{1f596}  \u{1f44d}');
  print(String.fromCharCodes(i));

  dynamic j = 10;
  print(j.runtimeType); // int
  j = 'a';
  print(j.runtimeType); // String
  // varの場合は初期化時の型推論が働くので途中で違う型を入れようとするとerror
  // var j = 0;
  // j = 'a'; // error

  print(int.parse('42') == 42); // cast String => int
  print(double.parse('42.3') == 42.3); // cast String => double
  print(42.31.toString() == '42.31'); // cast number => String
}