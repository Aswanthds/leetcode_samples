class Solution {
  int evalRPN(List<String> tokens) {
    List<int> stack = [];
    for (var token in tokens) {
      try {
        int number = int.parse(token);
        stack = [number, ...stack];
      } catch (e) {
        int val1 = stack.removeAt(0);
        int val2 = stack.removeAt(0);
        int newVal = evaluateOperation(token, val1, val2);
        stack = [newVal, ...stack];
      }
    }

    return stack.first;
  }

  evaluateOperation(String operand, int first, int second) {
    switch (operand) {
      case '+':
        return first + second;
      case '-':
        return second - first;
      case '*':
        return first * second;
      case '/':
        return (second / first).truncate();
      default:
        return 0;
    }
  }
}
