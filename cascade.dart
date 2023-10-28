main() {
  // カスケード記法、..で対象のインスタンスに対するメソッド呼び出しの操作を続けられる
  var fullString = StringBuffer()
    ..write('Use a StrigBuffer for')
    ..writeAll(['efficient', 'string', 'creation'], ' ')
    ..toString();
  print(fullString); 
}