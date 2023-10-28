main() {
  //文字列置換
  String dart = 'Dart Language'.replaceAll('a', '@');
  print('$dart');

  String address = '東京都 1-1-1';
  //　正規表現でマッチする全てを取得する
  Iterable<Match> matches = RegExp('1').allMatches(address);
  for (Match m in matches) {
    print(m.group(0));
  }

  // 改行を含んだ文字列をリテラルで表現するには'''で囲う
  String multiline = '''
改行
しました''';
  print(multiline);
}