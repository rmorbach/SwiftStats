//
//  StandardDeviation.swift
//  SwiftStats
//
//  Created by Rodrigo Morbach on 12/03/17.
//  Copyright © 2017 Morbach Inc. All rights reserved.
//

extension SwiftStats
{
    //MARK: Math reference: https://en.wikipedia.org/wiki/Standard_deviation
    public static func standardDeviation(_ data: [Float])->Float
    {
        return sqrtf(SwiftStats.variance(data))
    }
}
