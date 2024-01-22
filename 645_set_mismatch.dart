import 'dart:collection';

void main(List<String> args) {
  var nums = [1, 2, 2, 4];

  print(Solution().findErrorNums(nums));
}

class Solution {
  List<int> findErrorNums(List<int> nums) {
    int n = nums.length;
    int acSum = n * (n + 1) ~/ 2;
    int arSum = 0;
    int uniqSum = 0;

    Set<int> s = new HashSet<int>();

    for (int val in nums) {
      arSum += val;
      s.add(val);
    }

    for (int val in s) {
      uniqSum += val;
    }

    int dupl = arSum - uniqSum;
    int miss = acSum - uniqSum;

    return [dupl, miss];
  }
}
