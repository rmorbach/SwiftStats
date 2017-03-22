//
//  Kurtosis.swift
//  SwiftStats
//
//  Created by Rodrigo Morbach on 21/03/17.
//  Copyright © 2017 Morbach Inc. All rights reserved.
//

extension SwiftStats
{
    //MARK: Math reference: https://en.wikipedia.org/wiki/Kurtosis
    public static func kurtosis(_ data: [Float])->Float
    {
        let centralMoment = SwiftStats.moment(data, order: 4)
        let std = SwiftStats.standardDeviation(data)
        return centralMoment/powf(std, 4)
    }
}
