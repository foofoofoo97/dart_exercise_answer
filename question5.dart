// All numbers between 1 and 50 must appear at least once. Find the missing
// number(s) in the following array.
// var x = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23,
// 23, 25, 26, 28, 29, 30, 31, 32, 33, 35, 36, 38, 40, 41, 43, 45, 45, 46, 47, 48, 49, 50]

void main(List<String> args) {
  var x = [
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    10,
    11,
    12,
    13,
    14,
    15,
    16,
    17,
    18,
    19,
    20,
    21,
    22,
    23,
    23,
    25,
    26,
    28,
    29,
    30,
    31,
    32,
    33,
    35,
    36,
    38,
    40,
    41,
    43,
    45,
    45,
    46,
    47,
    48,
    49,
    50
  ];

  List<int> missing = [];

  for (int i = 1; i <= 50; i++) {
    if (!x.contains(i)) {
      missing.add(i);
    }
  }
  print(missing);
}
