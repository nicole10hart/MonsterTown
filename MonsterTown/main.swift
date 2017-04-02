//
//  main.swift
//  MonsterTown
//
//  Created by Hart, Nicole on 4/1/17.
//  Copyright © 2017 BigNerdRanch. All rights reserved.
//

import Foundation

var myTown = Town()

let myTownSize = myTown.townSize
print(myTownSize)

print("Population: \(myTown.population), number of stoplights: \(myTown.numberOfStopLights)")
myTown.changePopulation(by: 1_000_000)
print("Size: \(myTown.townSize); population: \(myTown.population)")
myTown.printDescription()

let genericMonster = Monster()
genericMonster.town = myTown
genericMonster.terrorizeTown()

//myTown.changePopulation(by: -5911)
let fredTheZombie = Zombie()
fredTheZombie.name = "Fred the Zombie"
fredTheZombie.town = myTown
fredTheZombie.terrorizeTown()
fredTheZombie.town?.printDescription()

print("Victim pool: \(fredTheZombie.victimPool)")
fredTheZombie.victimPool = 500
print("Victim pool: \(fredTheZombie.victimPool)")

print(Zombie.spookyNoise)
if Zombie.isTerrifying {
    print("Run away!")
}
let edwardTheVampire = Vampire()
edwardTheVampire.name = "Edward"
edwardTheVampire.town = myTown
edwardTheVampire.terrorizeTown()
edwardTheVampire.town?.printDescription()

//myTown.mayor.zombieAttack()
//
//fredTheZombie.terrorizeTown()
//

//print(edwardTheVampire.vampireThrall?.count ?? 0)


