//
//  Town.swift
//  MonsterTown
//
//  Created by Hart, Nicole on 4/1/17.
//  Copyright © 2017 BigNerdRanch. All rights reserved.
//

import Foundation

struct Town {
    var mayor = Mayor()
    static let region = "South"
    var population = 5_422 {
        didSet(oldPopulation) {
            print("The population has changed to \(population) from \(oldPopulation).")
        }
    }
    var numberOfStopLights = 4
    
    enum Size {
        case small
        case medium
        case large
    }
    
    var townSize: Size {
        get {
            switch self.population {
            case 0...10_000:
                return Size.small
            case 10_001...100_000:
                return Size.medium
            default:
                return Size.large
            }

        }
    }
    
    func printDescription() {
        print("Population: \(population); number of stoplights: \(numberOfStopLights)")
    }
    
    mutating func changePopulation(by amount: Int) {
        if (population + amount < 0){
            population = 0

        } else{
            population += amount
        }
        if (amount < 0){
            mayor.giveStatement(aboutDeath: true)
        }
    }
}
