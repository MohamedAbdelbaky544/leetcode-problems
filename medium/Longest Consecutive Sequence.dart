void main(List<String> args) {
  Solution solutions = Solution();
  print(solutions.longestConsecutive([100, 4, 200, 1, 3, 2]));
}

class Solution {
  int longestConsecutive(List<int> nums) {
    if (nums.isEmpty) return 0;
    if (nums.length == 1) return 1;

    nums.sort();
    int currentSequence = 1;
    int sequence = 1;

    for (int i = 1; i < nums.length; i++) {
      if (nums[i] == nums[i - 1] + 1 || nums[i] == nums[i - 1]) {
        if (nums[i] == nums[i - 1]) continue;
        currentSequence++;
        if (currentSequence > sequence) sequence = currentSequence;
      } else {
        currentSequence = 1;
      }
    }

    return sequence;
  }
}
