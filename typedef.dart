main() {
  // sort関数をtypedefで定義した型で格納
  Compare<int> sortFunc = sort;
  print('${sortFunc(1, 2)}');
}

// typedefで関数の型を定義
typedef Compare<T> = T Function(T a, T b);
int sort(int a, int b) => a - b;