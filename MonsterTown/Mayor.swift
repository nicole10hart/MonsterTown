//
//  Mayor.swift
//  MonsterTown
//
//  Created by Hart, Nicole on 4/2/17.
//  Copyright © 2017 BigNerdRanch. All rights reserved.
//

import Foundation

struct Mayor {
    private var anxietyLevel: Int = 0
    
    func giveStatement(aboutDeath: Bool) {
        if aboutDeath{
            print("I'm deeply saddened to hear about this latest tradegy. I promise that my office is looking into the nature of this rash of violence.")
        }
    }
    
    mutating func zombieAttack(){
        anxietyLevel += 1
        print("Increase in anxiety \(anxietyLevel)")
    }
}
