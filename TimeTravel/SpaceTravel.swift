//
//  SpaceTravel.swift
//  TimeTravel
//
//  Created by Forrest Zhao on 10/4/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

enum Speed: Double {
    case none = 0
    case slow  = 50.0
    case medium = 150.0
    case fast = 1000.0
    case lightSpeed = 1000000.0
    
    init(spaceSpeed: Double) {
        switch spaceSpeed {
        case 0...49:
            self = .none
        case 50...149:
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

enum Weather {
    case cold, warm, hot, superDuperHot
}

enum Planet: Int {
    case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
    
    var hasLife: Bool {
        return self == .earth || self == .mars
    }
    
    var weather: Weather {
        if self == .earth {
            return .warm
        } else if self == .venus {
            return .superDuperHot
        } else if self == .mars {
            return .cold
        } else {
            return .cold
        }
    }
    
    var name: String {
        switch self {
        case .venus:
            return "Venus"
        case .earth:
            return "Eart"
        case .mars:
            return "Mars"
        case .jupiter:
            return "Jupiter"
        case .saturn:
            return "Saturn"
        case .uranus:
            return "Uranus"
        case .neptune:
            return "Neptune"
        case .mercury:
            return "Mercury"
        }
    }
}


class SpaceShip {
    let name:String
    var speed:Speed = .none
    var currentPlanet:Planet
    var description: String {
        return "Hello World!"
    }
    
    init(name: String, planet:Planet) {
        self.name = name
        self.currentPlanet = planet
        
    }
    
    func timeTravel() -> Bool {
        return speed.isLightSpeed
    }
    
    func isFaster(than speed: Speed) -> Bool {
        return speed.isFaster(than: speed)
    }
    
    func travel(to planet: Planet) -> Bool {
        if currentPlanet == .mercury {
            return false
        }
        else {
            switch self.speed {
            case .fast:
                if planet == .venus || planet == .earth || planet == .neptune {
                    currentPlanet = planet
                    return true
                }
            case .slow:
                if planet == .jupiter || planet == .uranus {
                    currentPlanet = planet
                    return true
                }
            case .medium:
                if planet == .saturn {
                    currentPlanet = planet
                    return true
                }
            case .lightSpeed:
                if planet == .neptune || planet == .venus {
                    currentPlanet = .mars
                    return false
                }
                else {
                    currentPlanet = planet
                    return true
                }
            default:
                return false
            }
        }
        return false
    }
}
