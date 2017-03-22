//
//  MedianAbsoluteDeviation.swift
//  SwiftStats
//
//  Created by Rodrigo Morbach on 21/03/17.
//  Copyright © 2017 Morbach Inc. All rights reserved.
//

extension SwiftStats
{
    //MARK: Math reference: https://en.wikipedia.org/wiki/Median_absolute_deviation
    public static func MAD(_ data: [Float])->Float
    {
        let median = SwiftStats.median(data)
        let deviations = SwiftStats.deviations(data, from: median)
        return SwiftStats.median(deviations)
    }
}
