void main() {
  print(Solution().threeSum([-1, 0, 1, 2, -1, -4]));
}

class Solution {
  List<List<int>> threeSum(List<int> nums) {
    nums.sort((a, b) => a - b);

    List<List<int>> output = [];

    if (nums.isEmpty || nums.length < 3) output = [];
    for (int i = 0; i < nums.length - 2; i++) {
      int left = i + 1;
      int right = nums.length - 1;

      while (right > left) {
        int sum = nums[i] + nums[left] + nums[right];
        if (sum == 0) {
          output.add([nums[i], nums[left], nums[right]]);
          if (nums[left] == nums[left + 1]) left++;
          left++;
          if (nums[right] == nums[right - 1]) right++;
          right--;
        } else if (sum < 0) {
          left++;
        } else {
          right--;
        }
      }
    }
    List<List<int>> uniqueList = [];
    bool listsAreEqual(List<int> list1, List<int> list2) {
      for (int i = 0; i < list1.length; i++) {
        if (list1[i] != list2[i]) {
          return false;
        }
      }

      return true;
    }

    for (var item in output) {
      if (!uniqueList.any((element) => listsAreEqual(item, element))) {
        uniqueList.add(item);
      }
    }
    return uniqueList;
  }
}
