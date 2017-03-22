//
//  AbsoluteAverageDeviation.swift
//  SwiftStats
//
//  Created by Rodrigo Morbach on 21/03/17.
//  Copyright © 2017 Morbach Inc. All rights reserved.
//

extension SwiftStats
{
    //MARK: Math reference: https://en.wikipedia.org/wiki/Average_absolute_deviation
    public static func AADFromMean(_ data: [Float])->Float
    {
        let mean = SwiftStats.average(data)
        let deviations = SwiftStats.deviations(data, from: mean)
        return SwiftStats.average(deviations)
    }
    
    public static func AADFromMedian(_ data: [Float])->Float
    {
        let median = SwiftStats.median(data)
        let deviations = SwiftStats.deviations(data, from: median)
        return SwiftStats.average(deviations)
    }
    
    public static func AADFromMode(_ data: [Float])->Float?
    {
        guard let mode = SwiftStats.mode(data) else
        {
            return nil
        }
        
        let deviations = SwiftStats.deviations(data, from: mode)
        return SwiftStats.average(deviations)
    }
    
}
