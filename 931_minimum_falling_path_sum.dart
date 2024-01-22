import 'dart:math';

class Solution {
  int minFallingPathSum(List<List<int>> matrix) {
    int n = matrix.length;

    if (n == 1) return matrix[0][0];
    int minimum = double.maxFinite.toInt();

    for (int i = 1; i < n; i++) {
      for (int j = 0; j < n; j++) {
        if (j == 0) {
          matrix[i][j] += min(matrix[i - 1][j], matrix[i - 1][j + 1]);
        } else if (j == n - 1) {
          matrix[i][j] +=
              min(matrix[i - 1][j].toInt(), matrix[i - 1][j - 1].toInt());
        } else {
          matrix[i][j] += min(matrix[i - 1][j],
              min(matrix[i - 1][j - 1], matrix[i - 1][j + 1]));
        }

        if(i == n-1) minimum =  min(minimum,matrix[i][j]);
      }
    }
    return minimum;
  }
  
}

void main(List<String> args) {
  var matrix = [
    [2, 1, 3],
    [6, 5, 4],
    [7, 8, 9]
  ];

  print(Solution().minFallingPathSum(matrix));
}
