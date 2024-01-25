import 'dart:math';

class Solution {
  bool isUnique(String s) {
    Set<String> visited = {};
    for (int i = 0; i < s.length; i++) {
      if (visited.contains(s[i])) {
        return false;
      }
      visited.add(s[i]);
    }
    return true;
  }

  int maxLength(List<String> arr) {
    Set<String> res = {""}; // Initialize with an empty string
    int length = 0;

    for (String s in arr) {
      Set<String> crnt = {};

      for (String r in res) {
        String newString = r + s;
        if (isUnique(newString)) {
          crnt.add(newString);
          length = length > newString.length ? length : newString.length;
        }
      }

      res.addAll(crnt);
    }

    return length;
  }
}

class Solution2 {
  int maxLength(List a) {
    List r = [''];
    for (int i = 0; i < a.length; i++) {
      List c = [];
      for (String e in r) {
        final n = '$e${a[i]}';
        if (n.split('').toSet().toList().length == n.length) c.add(n);
      }
      r.addAll(c);
    }
    int m = 0;
    for (String s in r) m = max(m, s.length);
    return m;
  }
} 

void main(List<String> args) {
  List<String> arr = ["abcdefghijklmnopqrstuvwxyz"];
  print(Solution2().maxLength(arr));
}
