class Solution {
  bool isMatch(String s, String p) {
    if (p.isEmpty) {
      return s.isEmpty;
    }
    bool fMatch = s.isNotEmpty && (p[0] == s[0] || s[0] == '.');

    if (p.length >= 2 && p[1] == '*') {
      return isMatch(s, p.substring(2)) ||
          (fMatch && isMatch(s.substring(1), p));
    } else {
      return fMatch && isMatch(s.substring(1), p.substring(1));
    }
  }
}

void main(List<String> args) {
  var s = "aa", p = "a";

  print(Solution().isMatch(s, p));
}
