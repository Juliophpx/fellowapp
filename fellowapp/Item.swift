//
//  Item.swift
//  fellowapp
//
//  Created by Julio Gonzalez on 4/11/25.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
