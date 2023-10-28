main() {
  Cache<String> cache = Cache<String>();
  cache.setByKey('key', 'test');
  print('${cache.getByKey('key')}');

  // 関数のgenerics
  // 型の制限をするときは型のextendsを使う、以下の場合はnum型を継承（int, double型となる）
  T total<T extends num>(List<T> list, T init) {
    T sum = init;
    list.forEach((value) {
      sum += value; // 多分バグ：Error: A value of type 'num' can't be assigned to a variable of type 'T'.　
    });
    return sum;
}

  int r1 = total<int>([1, 2, 3], 0);
  print(r1); 
}
  


// インスタンス化するときTに型を指定する
class Cache<T> {
  Map<String, T> store = <String, T>{};

  T? getByKey(String key) {
    return store[key];
  }

  void setByKey(String key, T value) {
    this.store.addAll(<String, T>{key: value});
  }
}