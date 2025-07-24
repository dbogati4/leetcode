package DSA;
import java.util.Arrays;

public class _1_Two_Sum {
    public int[] twoSum(int[] nums, int target){
        int[][] indexedNums = new int[nums.length][2];
        for (int i = 0; i < nums.length; i ++){
            indexedNums[i][0] = i;
            indexedNums[i][1] = nums[i];
        }

        Arrays.sort(indexedNums, (a, b) -> Integer.compare(a[1], b[1]));
        int startIndex = 0;
        int endIndex = indexedNums.length;

        while (startIndex < endIndex){
            if (indexedNums[startIndex][1] + indexedNums[endIndex][1] == target){
                return new int[] {indexedNums[startIndex][0], indexedNums[endIndex][0]};
            }
            else if (indexedNums[startIndex][1] + indexedNums[endIndex][1] > target){
                endIndex -= 1;
            } else {
                startIndex += 1;
            }
        }

        return new int[] {2};
    }
}
