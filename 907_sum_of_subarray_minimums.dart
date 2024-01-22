import 'dart:math';

void main(List<String> args) {
  var arr = [71, 55, 82, 55];
  print(subArrayMins(arr));
}

int subArrayMins(List<int> arr) {
  List<int> left = List.filled(arr.length, 0);
  List<int> right = List.filled(arr.length, 0);
  List<int> stack = [];

  int sum = 0;

  for (int i = 0; i < arr.length; i++) {
    while (stack.isNotEmpty && arr[stack.last] > arr[i]) {
      stack.removeLast();
    }
    left[i] = stack.isNotEmpty ? i - stack.last : i + 1;
    stack.add(i);
  }
  stack.clear();
  for (int j = arr.length - 1; j >= 0; j--) {
    while (stack.isNotEmpty && arr[stack.last] > arr[j]) {
      stack.removeLast();
    }
    right[j] = stack.isNotEmpty ? stack.last - j : arr.length - j;
    stack.add(j);
  }

  for (int i = 0; i < arr.length; i++) {
    sum = (sum + right[i] * left[i] * arr[i]) % 1000000007;
  }

  return sum;
}
