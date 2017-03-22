//
//  Moment.swift
//  SwiftStats
//
//  Created by Rodrigo Morbach on 21/03/17.
//  Copyright © 2017 Morbach Inc. All rights reserved.
//

extension SwiftStats
{
    //MARK: Math reference: https://en.wikipedia.org/wiki/Moment
    public static func moment(_ data: [Float], order: Int)->Float
    {
        let average = SwiftStats.average(data)
        let total = data.reduce(0){sum, value in
            sum + pow(value - average, Float(order))
        }
        return total/Float(data.count)
    }
}
