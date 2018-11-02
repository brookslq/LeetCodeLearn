import Cocoa

/*
 题目： 存在重复
 
 如果数组中每个元素都不同，则返回 false ，反之则 true。

 eg:
 
 输入: [1,2,3,1]
 输出: true
 
 输入: [1,2,3,4]
 输出: false
 
 */

let input = [1,2,3,4]

func containsDuplicate(_ nums: [Int]) -> Bool {
    
    guard nums.count != 1 && nums.count != 0 else {
        return false
    }
    // 先进行排序（升降都行），然后前后数值进行判断
    let sortNums = nums.sorted{$0<$1}
    
    for i in sortNums.indices {
        // 对首末两项单独处理
        if i == 0  {
            if sortNums.first == sortNums[1] {
                return true
            }
        } else if i == sortNums.count - 1 {
            if sortNums.last == sortNums[i-1] {
                return true
            }
        } else {
            if sortNums[i] == sortNums[i+1] || sortNums[i] == sortNums[i-1] {
                return true
            }
        }
    }
    return false
}

let bool = containsDuplicate(input)
print(bool)
