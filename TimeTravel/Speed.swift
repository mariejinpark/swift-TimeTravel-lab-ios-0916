//
//  Speed.swift
//  TimeTravel
//
//  Created by Henry Ly on 10/4/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

enum Speed: Double {
    case none = 0
    case slow = 50
    case medium = 150
    case fast = 1000
    case lightSpeed = 1000000
    
    init(spaceSpeed: Double) {
        switch spaceSpeed {
        case 0:
            self = .none
        case 1...149:
            self = .slow
        case 150...999:
            self = .medium
        case 1000...999999:
            self = .fast
        default:
            self = .lightSpeed
        }
    }
        var isLightSpeed: Bool {
            return self == .lightSpeed
        }
 
    func isFaster(than speed: Speed) -> Bool {
        return self.rawValue > speed.rawValue
    }

    
    
    
    
    
}
