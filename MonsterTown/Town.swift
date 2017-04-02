//
//  Town.swift
//  MonsterTown
//
//  Created by Hart, Nicole on 4/1/17.
//  Copyright © 2017 BigNerdRanch. All rights reserved.
//

import Foundation

struct Town {
    //var mayor = Mayor()
    let region: String
    var population: Int {
        didSet(oldPopulation) {
            print("The population has changed to \(population) from \(oldPopulation).")
        }
    }
    var numberOfStopLights: Int
    
    init?(region: String, population: Int, stoplights: Int) {
        guard population > 0 else {
            return nil
        }
        self.region = region
        self.population = population
        numberOfStopLights = stoplights
    }
    
    init?(population: Int, stoplights: Int){
        self.init(region: "N/A", population: population, stoplights: stoplights)
    }
    
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
        print("Population: \(population); number of stoplights: \(numberOfStopLights); region: \(region)")
    }
    
    mutating func changePopulation(by amount: Int) {
        if (population + amount < 0){
            population = 0

        } else{
            population += amount
        }
//        if (amount < 0){
//            mayor.giveStatement(aboutDeath: true)
//        }
    }
}
