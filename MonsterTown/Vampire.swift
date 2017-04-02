//
//  Vampire.swift
//  MonsterTown
//
//  Created by Hart, Nicole on 4/1/17.
//  Copyright © 2017 BigNerdRanch. All rights reserved.
//

import Foundation

class Vampire: Monster {
    var vampireThrall: [Vampire]?
    
    final override func terrorizeTown() {
        town?.changePopulation(by: -1)
        vampireThrall?.append(self)
        super.terrorizeTown()
    }
}
