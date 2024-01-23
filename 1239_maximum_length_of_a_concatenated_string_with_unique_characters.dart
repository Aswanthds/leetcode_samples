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

void main(List<String> args) {
  List<String> arr = ["abcdefghijklmnopqrstuvwxyz"];
  print(Solution().maxLength(arr));
}
