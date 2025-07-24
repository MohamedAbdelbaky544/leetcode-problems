void main() {
  final Solution s = Solution();

  print(s.maxProfit([7, 6, 4, 3, 1]));
}

class Solution {
  int maxProfit(List<int> prices) {
    int minValue = double.maxFinite.toInt();
    int maxProfit = 0;
    for (int i = 0; i < prices.length; i++) {
      if (prices[i] < minValue) {
        minValue = prices[i];
      } else if (prices[i] - minValue > maxProfit) {
        maxProfit = prices[i] - minValue;
      }
    }
    return maxProfit;
  }
}
