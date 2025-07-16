//
//  WhishModel.swift
//  WhishList
//
//  Created by MahmoudRamadan on 15/07/2025.
//

import Foundation
import SwiftData

@Model
class Wish {
    var title: String
    
    init(title: String) {
        self.title = title
    }
}
