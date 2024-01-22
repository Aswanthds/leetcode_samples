class Solution {
  bool uniqueOccurrences(List<int> arr) {
    Map<int, int> map = {};

    arr.forEach((element) {
      if (map.containsKey(element)) {
        map[element] = map[element]! + 1;
      } else {
        map.addAll({element: 1});
      }
    });

    Set<int> hash = {};

    map.forEach((key, value) {
      hash.add(value);
    });

    print(map);
    print(hash);

    return map.length == hash.length;
  }
}

void main() {
  var arr = [1, 2, 2, 1, 1, 3];
  print(Solution().uniqueOccurrences(arr));
}
