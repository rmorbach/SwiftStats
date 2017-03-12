//
//  Percentile.swift
//  SwiftStats
//
//  Created by Rodrigo Morbach on 12/03/17.
//  Copyright © 2017 Morbach Inc. All rights reserved.
//

extension SwiftStats {
    
    //MARK: Math reference: https://en.wikipedia.org/wiki/Percentile
    public static func percentile(_ data:[Float], _ desiredPercentil: Float)->Float
    {
        let sortedData = SwiftStats.sort(data)
        let percentilPosition = (desiredPercentil / 100) * Float(sortedData.count)
        if floor(percentilPosition) >= Float(data.count)
        {
            return sortedData[data.count-1]
        }
        if(floor(percentilPosition) == percentilPosition)
        {
            //Is an integer
            return (sortedData[Int(percentilPosition)-1] + sortedData[Int(percentilPosition)])/2
        }
        let roundedPosition = roundf(percentilPosition)-1
        return sortedData[Int(roundedPosition)]
    }
}
