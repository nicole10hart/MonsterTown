//
//  Zombie.swift
//  MonsterTown
//
//  Created by Hart, Nicole on 4/1/17.
//  Copyright © 2017 BigNerdRanch. All rights reserved.
//

import Foundation

class Zombie: Monster {
    override class var spookyNoise: String {
        return "Brains..."
    }
    
    var walksWithLimp = true
    
    private(set) var isFallingApart = false
    
    final override func terrorizeTown() {
        if !isFallingApart{
            town?.changePopulation(by: -10)
        }
        town?.mayor.zombieAttack()
        super.terrorizeTown()
    }
}
