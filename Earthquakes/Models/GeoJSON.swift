//
//  GeoJSON.swift
//  EarthquakesTests
//
//  Created by 高嶋芙佳 on 2023/07/12.
//  Copyright © 2023 Apple. All rights reserved.
//

import Foundation

struct GeoJSON:Decodable {
    
    private enum RootCodingKeys:String,CodingKey{
        case features
    }
    private enum FeatureCodingKeys:String,CodingKey{
        case properties
    }
    private(set) var quakes: [Quake] = []
    
    init(from decoder:Decoder) throws {
        let rootContainer = try decoder.container(keyedBy: RootCodingKeys.self)
        var featuresContainer = try rootContainer.nestedUnkeyedContainer(forKey: .features)
        
        while !featuresContainer.isAtEnd{
            let propertiesContainer = try featuresContainer.nestedContainer(keyedBy: FeatureCodingKeys.self)
            
            if let properties = try? propertiesContainer.decode(Quake.self, forKey: .properties){
                quakes.append(properties)
            }
        }
    }
}
