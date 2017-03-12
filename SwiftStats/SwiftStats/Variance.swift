//
//  Variance.swift
//  SwiftStats
//
//  Created by Rodrigo Morbach on 12/03/17.
//  Copyright © 2017 Morbach Inc. All rights reserved.
//

extension SwiftStats
{
    //MARK: Math reference: https://en.wikipedia.org/wiki/Variance
    public static func variance(_ data:[Float])->Float
    {
        let average = SwiftStats.average(data)
        let sumOfSquaredAvgDiff = data.map { pow($0 - average, 2.0)}.reduce(0, {$0 + $1})
        return sumOfSquaredAvgDiff/Float(data.count)
    }
}
