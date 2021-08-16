// Find the least number of hops needed to get from ID=1 to ID=15 using the array
// tuple provided below. For example, to get from ID=1 to ID=4 will require 2 hops
// – [1,3] follow by [3,4].
void main() {
  var x = [
    [1, 2],
    [1, 3],
    [3, 4],
    [4, 5],
    [5, 6],
    [5, 7],
    [1, 7],
    [2, 8],
    [8, 9],
    [9, 11],
    [9, 10],
    [7, 10],
    [10, 12],
    [10, 14],
    [12, 13],
    [14, 15]
  ];
  Map<int, List<int>> mapper = {};
  for (var arr in x) {
    if (!mapper.containsKey(arr[1]))
      mapper.putIfAbsent(arr[1], () => [arr[0]]);
    else
      mapper[arr[1]]!.add(arr[0]);
  }

  Wrapper wrapper = new Wrapper();
  DFS(mapper, 1, 1, 15, wrapper);
  print(wrapper.nums);
  wrapper.nums.sort();
  print("least number of hops: ${wrapper.nums[0]}");
}

class Wrapper {
  List<int> nums = [];
}

void DFS(Map<int, List<int>> mapper, int no, int target, int start,
    Wrapper wrapper) {
  if (mapper.containsKey(start)) {
    for (int prev in mapper[start]!) {
      if (prev == 1)
        wrapper.nums.add(no);
      else
        DFS(mapper, no + 1, target, prev, wrapper);
    }
  }
}
