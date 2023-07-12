//
//  NSCache+Subscript.swift
//  Earthquakes-iOS
//
//  Created by 高嶋芙佳 on 2023/07/12.
//  Copyright © 2023 Apple. All rights reserved.
//

import Foundation

extension NSCache where KeyType == NSString, ObjectType == CacheEntryObject {
    subscript(_ url:URL) -> CacheEntry? {
        get{
            let key = url.absoluteString as NSString
            let value = object(forKey: key)
            return value?.entry
        }
        set {
            let key = url.absoluteString as NSString
            if let entry = newValue {
                let value = CacheEntryObject(entry: entry)
                setObject(value, forKey: key)
            } else {
                removeObject(forKey: key)
            }
        }
    }
}
