//
//  SwiftStats.swift
//  SwiftStats
//
//  Created by Rodrigo Morbach on 12/03/17.
//  Copyright © 2017 Morbach Inc. All rights reserved.
//

import UIKit

public class SwiftStats: NSObject {

    //Get max value
    public static func max(_ data:  [Float])->Float?
    {
        return data.max()
    }
    
    //Get min value
    public static func min(_ data:  [Float])->Float?
    {
        return data.min()
    }
    
    //Sort values
    public static func sort(_ data: [Float])->[Float]
    {
        return data.sorted{$0 < $1}
    }
    //MARK: Math reference: https://en.wikipedia.org/wiki/Average
    public static func average(_ data: [Float])->Float
    {
        let sum = data.reduce(0, +)
        return sum/Float(data.count)
    }
   
    //MARK: referenca can be mean, median or mode
    public static func deviations(_ data: [Float], from reference: Float)->[Float]
    {
        var deviations = [Float]();
        for value in data
        {
            var v = (value - reference)
            if v < 0
            {
                v = v * -1
            }
            deviations.append(v)
        }
        return deviations
    }


}
