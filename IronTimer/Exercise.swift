//
//  Exercise.swift
//  IronTimer
//
//  Created by Kaneis Zontanos on 9/7/24.
//

import Foundation

struct Exercise: Hashable {
    let name: String
    var sets: Int
    
    init(name: String, sets: Int = 3) {
        self.name = name
        self.sets = sets
    }
}
