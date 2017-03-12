//
//  Median.swift
//  SwiftStats
//
//  Created by Rodrigo Morbach on 12/03/17.
//  Copyright © 2017 Morbach Inc. All rights reserved.
//

extension SwiftStats
{
    //MARK: Math reference: https://en.wikipedia.org/wiki/Median
    public static func median(_ data: [Float])->Float
    {
        let sortedData = SwiftStats.sort(data)
        let count = data.count
        //Even data
        if (count % 2) == 0 {
            let leftIndex = Int(count / 2 - 1)
            let leftValue = sortedData[leftIndex]
            let rightValue = sortedData[leftIndex + 1]
            
            return (leftValue+rightValue)/2
        }
        else
        {
            return Float(sortedData[Int(count/2)])
        }

    }
}
