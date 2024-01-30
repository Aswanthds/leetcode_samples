
import 'dart:math';
class Solution {
  int maxSum(List<int> nums) {
    int maxValue = -1;
    for (int i = 0; i < nums.length; i++) {
      for (int j = i + 1; j < nums.length; j++) {
        int max1 = maxDigit(nums[i]);
        int max2 = maxDigit(nums[j]);

        if (max1 == max2) {
          int cSum = nums[i] + nums[j];

          maxValue = max(maxValue, cSum);
        }
      }
    }
    return maxValue;
  }
  int maxDigit(int x) {
    var maxv = 0;
    while (x > 0) {
      int r = x % 10;
      maxv = max(maxv, r);
      x ~/= 10;
    }
    return maxv;
  }
}
