//
//  Planet.swift
//  TimeTravel
//
//  Created by Henry Ly on 10/4/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

enum Planet: Int {
    case mercury = 1
    case venus, earth, mars, jupiter, saturn, uranus, neptune

    var hasLife: Bool {
        return self == .earth || self == .mars
    }

    var weather: Weather {
        switch self {
        case .mercury:
            return .superDuperHot
        case .venus:
            return .hot
        case .earth:
            return .warm
        default:
            return .cold
        }
    }

}

