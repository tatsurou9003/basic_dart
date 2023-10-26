main() {
  // Masterインスタンス生成
  Master master = Master('Master');
  print(master.commit('ToDo List'));

  // Branchインスタンス生成
  Branch branch = Branch('Branch');
  print(branch.commit('sort'));
}

class Master {
  final _name;
  Master(this._name);

  String commit(String msg) => '${_name} commit ${msg}';
}

// inplementsでMasterインターフェースを定義する
// inplementsは抽象クラスと掛け合わせることが多く、インターフェースを実装するという契約を課す(暗黙的インターフェースの実装)
class Branch implements Master {
  final String _name; 
  Branch(this._name); // Masterクラスのコンストラクタを呼び出して_nameプロパティを初期化

  String commit(String msg) => '${_name} commit ${msg}'; // メソッドを実装
}

/*
extendsの親クラスは１つしか指定できないのに対し、implementsは複数指定できる

class Director extends Person implements Animal, Point {}
*/