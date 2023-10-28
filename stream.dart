void main() async {
  final counter = Counter();

  await for (var count in counter.counterSync()) {
    print(count);
  }
}

// 複数データの非同期処理はStreamを使用する
class Counter {
  // Streamの場合は、asyncの後に*がつきます。
  Stream<int> counterSync() async* {
    int count = 0;

    for (var i = 0; i < 80; ++i) {
      count = await _counter(count);
      yield count; // Stream型の場合はreturnではなくて、yieldを使います。
    }
  }

  Future<int> _counter(int count) async {
    await Future.delayed(const Duration(seconds: 1));
    return count + 1;
  }
}

