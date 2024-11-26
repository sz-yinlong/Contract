//
//  Item.swift
//  ContractApp
//
//  Created by ARTEM BARIEV on 11/26/24.
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
