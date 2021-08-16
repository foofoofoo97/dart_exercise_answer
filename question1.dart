import 'dart:ffi';

///Initialize an array with 100 random integers.

import 'dart:math';

void main() {
  var r = Random(DateTime.now().millisecond);
  List<int> array = [];
  for (int i = 0; i < 100; i++) {
    array.add(r.nextInt(1000));
  }

  print(array);
}
