main() {
  // forEach
  List lists = ['a', 'b', 'c'];
  lists.forEach((value) { print(value);} );
  
  Set sets = {'a', 'b', 'c'};
  sets.forEach((value) { print(value);} );

  Map maps = {'a':'b', 'c':'d', 'e':'f'};
  maps.forEach((key, value) { print('$key $value');} );

  // for 
  for (var i = 0; i < 3; i++) {
    print(i);
  }

  // for in
  for (var i in ['a', 'b', 'c', 'd', 'e']) {
    if (i == 'b' || i == 'd') continue;
    print(i);
  }

  for (var i in {'a', 'b', 'c'}) {
    print(i);
  }

  // while
  int w = 0;
  while (true) {
    if (w == 3) {
      break;
    } else if (w == 1) {
      w++;
      print('w = $w');      
    } else {
      w++;
      print('w = $w');
    }
  }

  // do-while
  int dw = 0;
  do {
    dw++;
    print('dw = $dw');
  } while (dw < 3);

  // switch
  String command = 'CLOSED';
  switch (command) {
    case 'CLOSED':
      print('CLOSED');
      continue nowClosed;   // continueでlabelに飛ばす
    nowClosed:              // label
    case 'NOW_CLOSED':
      print('NOW_CLOSED');
      break;                // break必須
  }
} 