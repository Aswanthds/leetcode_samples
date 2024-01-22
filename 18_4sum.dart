class Solution {
  List<List<int>> fourSum(List<int> nums, int target) {
    List<List<int>> res = [];

    if (nums.length < 4) return res;
    nums.sort();
    for (int i = 0; i < nums.length - 3; i++) {
      if (i > 0 && nums[i] == nums[i - 1]) continue;

      for (int j = i + 1; j < nums.length - 2; j++) {
        if (j > i + 1 && nums[j] == nums[j - 1]) continue;
        int left = j + 1;
        int right = nums.length - 1;

        while (left < right) {
          int sum = nums[i] + nums[j] + nums[left] + nums[right];

          if (sum == target) {
            res.add([nums[i], nums[j], nums[left], nums[right]]);

            while (left < right && nums[left] == nums[left + 1]) {
              left++;
            }
            while (left < right && nums[right] == nums[right - 1]) {
              right--;
            }
            left++;
            right--;
          } else if (sum < target) {
            left++;
          } else {
            right--;
          }
        }
      }
    }

    return res;
  }
}

void main() {
  var nums = [1, 0, -1, 0, -2, 2], target = 0;
  print(Solution().fourSum(nums, target));
}
