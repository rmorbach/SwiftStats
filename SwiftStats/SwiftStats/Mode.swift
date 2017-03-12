//
//  Mode.swift
//  SwiftStats
//
//  Created by Rodrigo Morbach on 12/03/17.
//  Copyright © 2017 Morbach Inc. All rights reserved.
//

extension SwiftStats
{
    //MARK: Math reference: https://en.wikipedia.org/wiki/Mode_(statistics)
    public static func mode(_ data: [Float])->Float?
    {
        var mode: (value: Float,count: Int) = (value: 0.0, count: 1)
        let sortedData = data.sorted { (first, second) -> Bool in
            return first < second
        }
        for value in sortedData{
            var lastCounter = 0
            for toCompare in sortedData
            {
                if toCompare == value
                {
                    lastCounter += 1
                }
            }
            if lastCounter > mode.count
            {
                mode.count = lastCounter
                mode.value = value
            }
        }
        if mode.count > 1
        {
            return mode.value
        }
        return nil
    }
}
