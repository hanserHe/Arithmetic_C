//
//  HSArithmeticViewModel.swift
//  Arithmetic_C
//
//  Created by Hanser on 2019/1/21.
//  Copyright © 2019 Hanser. All rights reserved.
//

import Foundation


class HSArithmeticViewModel: NSObject {
    
    
    @objc public func twoSum(array: NSArray, target: Int) -> NSArray {
        let mArray = NSMutableArray()
        let mSet = NSMutableSet()
        var temp: Int
        for number in array {
            temp = target - (number as! Int)
            if (mSet.contains(temp)) {
                let index1 = array.index(of: number)
                let index2 = array.index(of: temp)
                mArray.add(index1)
                mArray.add(index2)
                return mArray
            }
            mSet.add(number)
        }
        return []
    }
    
    @objc public func test() {
        print("哈哈哈")
    }
}
