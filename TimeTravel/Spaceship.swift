//
//  Spaceship.swift
//  TimeTravel
//
//  Created by Henry Ly on 10/4/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class SpaceShip {
    var name: String
    var speed: Speed = .none
    var currentPlanet: Planet
    var description: String {
        return "Blah blah blah"
    }
    
    init(name: String, currentPlanet: Planet) {
        self.name = name
        self.currentPlanet = currentPlanet
    }
    
    func timeTravel() -> Bool {
        return speed.isLightSpeed
    }
    
    func isFaster(than spaceShip: SpaceShip) -> Bool {
        return self.speed.isFaster(than: spaceShip.speed)
    }
    
    func travel(to planet: Planet) -> Bool {
        var canTravel: Bool = false
        
        if currentPlanet == .mercury {
            return false
        } else {
            switch planet {
            case .neptune:
                if self.speed == .lightSpeed {
                    currentPlanet = .mars
                    canTravel = false
                } else if self.speed == .fast {
                    currentPlanet = planet
                    canTravel = true
                }
            case .venus:
                if self.speed == .lightSpeed {
                    currentPlanet = .mars
                    canTravel = false
                } else if self.speed == .fast {
                    currentPlanet = planet
                    canTravel = true
                }
            case .earth:
                if self.speed == .fast {
                    currentPlanet = planet
                    canTravel = true
                }
            case .mars:
                if self.speed == .lightSpeed {
                    currentPlanet = planet
                    canTravel = true
                }
            case .jupiter, .uranus:
                if self.speed == .slow {
                    currentPlanet = planet
                    canTravel = true
                }
            case .saturn:
                if self.speed == .medium {
                    currentPlanet = planet
                    canTravel = true
                }
            default:
                canTravel = false
            }
        }
        return canTravel
    }
    
    
    
    
}
