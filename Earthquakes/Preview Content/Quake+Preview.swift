//
//  Quake+Preview.swift
//  Earthquakes-iOS
//
//  Created by 高嶋芙佳 on 2023/07/12.
//  Copyright © 2023 Apple. All rights reserved.
//

import Foundation

extension Quake {
    static var preview:Quake{
        var quake = Quake(magnitude: 0.34,
                          place: "Shakey Acres",
                          time: Date(timeIntervalSinceNow: -1000),
                          code: "nc73649170",
                          detail:URL(string: "https://example.com")!)
        quake.location = QuakeLocation(latitude: 38.809_333_8, longitude: -122.796_836_9)
        return quake
    }
}
