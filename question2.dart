///Sort (descending) the following array:
///var x = ["2019-10-01", "2008-10-03", "2011-10-10", "2001-02-01", "1923-01-01"]

void main() {
  var x = [
    "2019-10-01",
    "2008-10-03",
    "2011-10-10",
    "2001-02-01",
    "1923-01-01"
  ];

  x.sort((a, b) => b.compareTo(a));
  print(x);
}
