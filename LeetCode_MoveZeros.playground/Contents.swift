import Cocoa

/*
 LeetCode算法学习秘密基地
 */

/*
 Class1. Move Zero

 eg: input [0,1,0,3,12]
    output [1,3,12,0,0]
 
 要求：
    1. 必须在原数组上操作，不能拷贝额外的数组
    2. 尽量减少操作次数
 */

var input = [0,0,1,0,3,12,0,0,0]
let ZERO = 0
func moveZero(_ input: inout[Int]) {
    // 存储 value 是 0 的索引
    var indexs: [Int] = []
    for i in input.indices {
        // 判断是否有存在有 0 值的索引
        if indexs.count != ZERO {
            // 继续判断，当前值是否为 0
            guard input[i] != ZERO else {
                indexs.append(i)
                continue
            }
            // 当前值不为 0 ，将其值赋给对应的 indexs中第一个索引对应的 0 值
            // 并在赋值结束之后，移除首位索引，并更改当前值为 0
            // 以及添加当前索引到 indexs 中
            print("第：" + i.description + "个元素,值为：" + input[i].description)
            print(input)
            input[indexs.first!] = input[i]
            indexs.remove(at: 0)
            indexs.append(i)
            input[i] = ZERO
        } else {
            // 如果该值为 0 ，则把索引添加到 indexs 中
            if input[i] == ZERO {
                indexs.append(i)
            }
        }
    }
}

//moveZero(&input)
//print(input)

func moveZeros(_ input: inout[Int]) {
    // k 用于记录值为 0 的 个数（又能拿来做索引）
    var k = 0
    for i in input.indices {
        // 当非 0 时进入方法
        if input[i] != ZERO {
            // 如果当前 非0值 前面有多个 0  则会进入下面的if语句内
            if (k != i) {
                // 内置的 交换函数
                input.swapAt(k, i)
                // k 值记录增加一位
                k = k + 1
                print(i.description)
            } else {
                // 感觉不会进来…
                print(i.description)
                k = k + 1
            }
        }
    }
}

moveZeros(&input)
print(input)
