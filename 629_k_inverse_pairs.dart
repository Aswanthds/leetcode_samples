void main() {
  print(Solution().kInversePairs(3, 2));
}

class Solution {
  int kInversePairs(int n, int k) {
    var ar = List<List<int>>.generate(
        n + 1, (i) => List<int>.filled(k + 1, 0, growable: false),
        growable: false);

    ar[0][0] = 1;
    int mod = 1000000007;

    for (int i = 1; i <= n; i++) {
      int val = 0;
      for (int j = 0; j <= k; j++) {
        val += ar[i - 1][j];
        if (j >= i) val -= ar[i - 1][j - i];
        if (val < 0) val += mod;
        val = val % mod;
        ar[i][j] = val;
      }
    }

    return ar[n][k];
  }
}
