class Solution {
  String finalString(String s) {
    List<String> res = [];
    for (int i = 0; i < s.length; i++) {
      if (s[i] == "i") {
        res = res.reversed.toList();
      } else {
        res.add(s[i]);
      }
    }
    return res.join();
  }
}
