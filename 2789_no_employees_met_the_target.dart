class Solution {
  int numberOfEmployeesWhoMetTarget(List<int> hours, int target) {
    int count = 0;
    for (int el in hours) {
      if (el >= target) {
        count++;
      }
    }
    return count;
  }
}
