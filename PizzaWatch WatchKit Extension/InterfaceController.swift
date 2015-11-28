//
//  InterfaceController.swift
//  PizzaWatch WatchKit Extension
//
//  Created by Arturo Barreto Villafán on 11/28/15.
//  Copyright © 2015 Arturo Barreto Villafán. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    
    var tamanoPizza = ""
    var Contexto  = PizzaClass(masa: "", tamano: "", queso: "", ingredientesPizza : [""])

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    
    @IBAction func chica() {
        
        tamanoPizza  = "Pizza Chica"
        Contexto = PizzaClass(masa: "", tamano: tamanoPizza, queso: "", ingredientesPizza: [""])
        pushControllerWithName("Masa", context: Contexto)
    }
    
    

    @IBAction func mediana() {
          tamanoPizza  = "Pizza Mediana"
        Contexto = PizzaClass(masa: "", tamano: tamanoPizza, queso: "", ingredientesPizza: [""])
        pushControllerWithName("Masa", context: Contexto)
    }

    @IBAction func grande() {
          tamanoPizza  = "Pizza Grande"
        Contexto = PizzaClass(masa: "", tamano: tamanoPizza, queso: "", ingredientesPizza: [""])
        pushControllerWithName("Masa", context: Contexto)
    }
}
