//
//  Skewness.swift
//  SwiftStats
//
//  Created by Rodrigo Morbach on 21/03/17.
//  Copyright © 2017 Morbach Inc. All rights reserved.
//

extension SwiftStats
{
    //MARK: Math reference: https://en.wikipedia.org/wiki/Skewness
    public static func skewness(_ data: [Float])->Float
    {
        let std = SwiftStats.standardDeviation(data)
        let centralMoment = SwiftStats.moment(data, order: 3)
        return centralMoment/powf(std, 3)
    }
}
