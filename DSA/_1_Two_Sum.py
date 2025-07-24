class Solution(object):
    def twoSum(self, num, target):
        indexed_num = list(enumerate(num))
        sorted_num = sorted(indexed_num, key=lambda x:x[1])
        start_index = 0
        end_index = len(num) - 1
        
        while start_index < end_index:
            if sorted_num[start_index][1] + sorted_num[end_index][1] == target:
                return [sorted_num[start_index][0], sorted_num[end_index][0]]
            elif sorted_num[start_index][1] + sorted_num[end_index][1] > target:
                end_index -= 1
            else: start_index += 1
            