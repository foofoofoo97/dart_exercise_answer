// List out all the unique values of attribute “z” found in the following array list:
// var x = ["<r><a z=\"3\"><a z=\"2\"></r>", "<r><a z=\"1\"><a z=\"2\"></r>", "<r><a
// z=\"4\"><a z=\"2\"></r>"]

void main(List<String> args) {
  var x = [
    "<r><a z=\"3\"><a z=\"2\"></r>",
    "<r><a z=\"1\"><a z=\"2\"></r>",
    "<r><az=\"4\"><a z=\"2\"></r>"
  ];
  var y = [];
  for (String str in x) {
    y.add(str.replaceAll(RegExp("[ <r>a=\"\"32/14]"), ""));
  }
  print(y);
}
