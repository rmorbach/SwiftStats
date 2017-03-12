//
//  SwiftStats.swift
//  SwiftStats
//
//  Created by Rodrigo Morbach on 12/03/17.
//  Copyright © 2017 Morbach Inc. All rights reserved.
//

import UIKit

public class SwiftStats: NSObject {

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
}
