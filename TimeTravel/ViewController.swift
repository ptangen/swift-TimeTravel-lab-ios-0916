//
//  ViewController.swift
//  TimeTravel
//
//  Created by James Campagno on 10/4/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var currentPlanet: UILabel!
  let mySpaceShip = SpaceShip(name: "superSpaceShip", planet: .venus)
  
    override func viewDidLoad() {
        super.viewDidLoad()
      currentPlanet.text = mySpaceShip.currentPlanet.name
    }

  @IBAction func speedSelected(_ sender: UISegmentedControl) {
    switch sender.selectedSegmentIndex {
    case 0:
      mySpaceShip.speed = Speed.slow
    case 1:
      mySpaceShip.speed = Speed.medium
    case 2:
      mySpaceShip.speed = Speed.fast
    case 3:
      mySpaceShip.speed = Speed.lightSpeed
    default:
      break
    }
  }
  
  @IBAction func planetSelected(_ sender: UIButton) {
    switch sender.titleLabel!.text! {
    case "Venus":
      if mySpaceShip.travel(to: .venus) {
        currentPlanet.text = Planet.venus.name
      }
      print("VENUS!!!!")
    case "Earth":
      if mySpaceShip.travel(to: .earth) {
        currentPlanet.text = Planet.earth.name
      }
      print("VENUS!!!!")
    case "Mars":
      if mySpaceShip.travel(to: .mars) {
        currentPlanet.text = Planet.mars.name
      }
      print("VENUS!!!!")
    case "Uranus":
      if mySpaceShip.travel(to: .uranus) {
        currentPlanet.text = Planet.uranus.name
      }
      print("VENUS!!!!")
    case "Jupiter":
      if mySpaceShip.travel(to: .jupiter) {
        currentPlanet.text = Planet.jupiter.name
      }
      print("VENUS!!!!")
    case "Neptune":
      if mySpaceShip.travel(to: .neptune) {
        currentPlanet.text = Planet.neptune.name
      }
      print("VENUS!!!!")
    case "Saturn":
      if mySpaceShip.travel(to: .saturn) {
        currentPlanet.text = Planet.saturn.name
      }
      print("VENUS!!!!")
    default:
      if mySpaceShip.travel(to: .mercury) {
        currentPlanet.text = Planet.mercury.name
      }
      print("VENUS!!!!")
    }
  }

}
