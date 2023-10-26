const int x = 10;

// 返り値無しの場合はvoidを指定
int testFunction() {
  const y = 20;
  print('$x, $y');   // 関数の外で定義されているxは参照可
  return x + y; 
}

void main() {
  // print('$y');  // 関数の内部で定義されているXは参照不可
  
  // トップレベルでなくても関数内部でも関数定義できる
  // int testFunction(){
  //   const y = 20;
  //   print('$x, $y');
  //   return x + y;
  // }

  int result = testFunction();
  print('$result');

  // 一行の場合、アロー関数表記可
  int oneline(a,b) => a + b;
  // int oneline(a,b){ return a + b } と等価
  print(oneline(1,2));

  // {}は名前付き任意引数
  void enableFlags({bool bold = false, bool hidden = false}) { print('$bold $hidden'); }
  // 引数labelで呼び出す
  enableFlags(hidden: true);

  // []は順序付き任意引数、特定の位置以降の引数を省略可能
  String say(String from, String msg, {String device = 'unknown', String? mood}) {
    return '$from says $msg platform: ${device} mood: ${mood ?? 'unknown'}';
  };
  String message = say('Alice', 'Hello', device:'iphone');
  print(message);
}