//
//  main.swift
//  SolarSystem
//
//  Created by Махмут on 04.07.2018.
//  Copyright © 2018 Makhmut Syzdykbayev. All rights reserved.
//

import Foundation

 let planets = ["mercury","venus","earth","mars","jupiter","saturn","uranus","neptune"]
let random_int = Int(arc4random_uniform(UInt32(planets.count)-1))

print("Welcom to the Solar System")
print("There are 8 planets to explore")
print("What is your name? ")
let input = readLine()
print(input!)
print("Nice to meet you,\(input!). My name is Eliza, I'm an old friend of Siri")
print("Let's go on an adventure!")
print("Shall i randomly choose a planet for you to vizit? (Y or N)")
let input_2 = readLine()
print(input_2!)
if(input_2 == "n" || input_2 == "N"){
    print("ok,name the planet you would like to vizit")
    let input_3 = readLine()
    if(planets.contains(input_3!)){
        print("traveling to \(input_3!)...")
        print("arrived at \(input_3!)")
    }
}
else if(input_2 == "y" || input_2 == "Y"){
    let planet = planets[random_int]
    print("traveling to \(planet)")
    print("arrived at \(planet)")
}

