import 'dart:math';

class Solution {
  int rob(List<int> nums) {
    int n = nums.length;
    final ar = List<int>.from(nums);
    for (int i = 0; i < n; i++) {
      for (int j = i + 2; j < n; j++) {
        ar[j] = max(ar[j], ar[i] + nums[j]);
      }
    }
    ar.sort();
    return ar.isEmpty ? 0 : ar.last;
  }


}

void main() {
  var nums = [1, 2];

  print(Solution().rob(nums));
}
