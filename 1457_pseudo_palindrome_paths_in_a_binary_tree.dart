class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;
  TreeNode([this.val = 0, this.left, this.right]);
}

class Solution {
  int pseudoPalindromicPaths(TreeNode? root) {
    var count = 0;
    List<List<dynamic>> stack = [
      [root, 0]
    ];

    while (stack.length > 0) {
      List<dynamic> current = stack.removeLast();
      TreeNode? node = current[0];
      int path = current[1];
      if (node != null) {
        path ^= (1 << node.val);

        if (node.left == null && node.right == null) {
          if ((path & (path - 1)) == 0) {
            count += 1;
          }
        } else {
          stack.add([node.right, path]);
          stack.add([node.left, path]);
        }
      }
    }

    return count;
  }
}

void main() {
  TreeNode root = TreeNode(
    2,
    TreeNode(3, TreeNode(3), TreeNode(1)),
    TreeNode(1, null, TreeNode(1)),
  );

  int result = Solution().pseudoPalindromicPaths(root);
  print(result); // Output: 2
}
