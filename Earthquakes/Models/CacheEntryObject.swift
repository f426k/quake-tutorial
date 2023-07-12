//
//  CacheEntryObject.swift
//  Earthquakes-iOS
//
//  Created by 高嶋芙佳 on 2023/07/12.
//  Copyright © 2023 Apple. All rights reserved.
//

import Foundation

final class CacheEntryObject{
    let entry: CacheEntry
    init(entry: CacheEntry){self.entry = entry}
}
enum CacheEntry{
    case inProgress(Task<QuakeLocation,Error>)
    case ready(QuakeLocation)
}
