import Cocoa

/*
 两数之和
 
 题目：
 给定一个整数数组和一个目标值，找出数组中和为目标值的两个数。
 你可以假设每个输入只对应一种答案，且同样的元素不能被重复利用。
 
 eg:
 input: nums = [2, 7, 11, 15], target = 9
 output: [0, 1]
 */

let nums = [2, 7, 11, 15]
let target = 9

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var indexs = [Int]()
    for i in nums.indices {
        // 从当前值往后的索引数
        let indexAfterNum = nums.count - i
        // 循环遍历相加结果等于 target
        // 从 1 开始是因为不能和自己相加运算
        for j in 1..<indexAfterNum {
            let index = i + j
            if nums[i] + nums[index] == target {
                indexs.append(i)
                indexs.append(index)
                return indexs
            }
        }
    }
    return indexs
}

let result = twoSum(nums, target)
print(result)

func twoSum2(_ nums: [Int], _ target: Int) -> [Int] {
    var indexs = [Int]()
   
    for i in nums.indices {
        let value = target - nums[i]
        // swift 哈希表查找，暂时不太清楚怎么用……
        // 理解倒是理解
       
    }
    return indexs
}
