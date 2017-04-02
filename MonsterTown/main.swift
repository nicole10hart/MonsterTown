//
//  main.swift
//  MonsterTown
//
//  Created by Hart, Nicole on 4/1/17.
//  Copyright © 2017 BigNerdRanch. All rights reserved.
//

import Foundation

//var myTown = Town()
//var myTown = Town(region: "West", population: 10_000, stoplights: 6)
var myTown = Town(population: 0, stoplights: 6)
myTown?.printDescription()

let myTownSize = myTown?.townSize
print(myTownSize!)

print("Population: \(String(describing: myTown?.population)), number of stoplights: \(String(describing: myTown?.numberOfStopLights))")
myTown?.changePopulation(by: 1_000_000)
print("Size: \(String(describing: myTown?.townSize)); population: \(String(describing: myTown?.population))")
myTown?.printDescription()

let genericMonster = Monster(town: myTown, monsterName: "Generic")
//genericMonster.town = myTown
genericMonster.terrorizeTown()

//myTown.changePopulation(by: -5911)
var fredTheZombie: Zombie? = Zombie(limp: false, fallingApart: false, town: myTown, monsterName: "Fred")
//fredTheZombie.name = "Fred the Zombie"
//fredTheZombie.town = myTown
fredTheZombie?.terrorizeTown()
fredTheZombie?.town?.printDescription()

var convenientZombie = Zombie(limp: true, fallingApart: false)

print("Victim pool: \(String(describing: fredTheZombie?.victimPool))")
fredTheZombie?.victimPool = 500
print("Victim pool: \(String(describing: fredTheZombie?.victimPool))")

print(Zombie.spookyNoise)
if Zombie.isTerrifying {
    print("Run away!")
}

fredTheZombie = nil

let edwardTheVampire = Vampire(town: myTown, monsterName: "Edward")
//edwardTheVampire.name = "Edward"
//edwardTheVampire.town = myTown
edwardTheVampire.terrorizeTown()
edwardTheVampire.town?.printDescription()

//edwardTheVampire = nil

//myTown.mayor.zombieAttack()
//fredTheZombie.terrorizeTown()

//print(edwardTheVampire.vampireThrall?.count ?? 0)


