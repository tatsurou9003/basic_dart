void main() {
  test();
  print('Next...');
}

/*
void main() async {   // この場合、awaitでtest()が出力されるまで待つ
  await test();
  print('Next...');
}
*/
Future<String> pickAllDocuments() {
  String docs = ''; 

  // 時間が掛かる処理
  for (int i = 0; i < 100000; ++i) {
    if (i == 99999) docs = 'Finish pickAllDocuments!';
  }
  return Future<String>.value(docs); // ファクトリメソッドの.value()でFutureオブジェクトを返す
}

void test() async {  // asyncで非同期処理の宣言を行う
  String docs = await pickAllDocuments();  // awaitを使用しないとprint(docs)で空文字が出力されてしまう
  print(docs);
}

