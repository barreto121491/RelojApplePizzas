//
//  TipoMasa.swift
//  PizzaWatch
//
//  Created by Arturo Barreto Villafán on 11/28/15.
//  Copyright © 2015 Arturo Barreto Villafán. All rights reserved.
//

import WatchKit
import Foundation


class TipoMasa: WKInterfaceController {
    
    var tipoMasa = ""
    var Contexto = PizzaClass(masa: "", tamano: "", queso: "",ingredientesPizza : [""])
    var tamanoPizza = ""

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        let c = context as! PizzaClass
        
        print(c.tamanoPizza)
        tamanoPizza = c.tamanoPizza
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    
 
    
    @IBAction func delagada() {
        
        tipoMasa = "Masa Delgada"
        Contexto = PizzaClass(masa: tipoMasa, tamano: tamanoPizza, queso: "", ingredientesPizza: [""])
        pushControllerWithName("Quesos", context: Contexto)
    }

    @IBAction func gruesa() {
        tipoMasa = "Masa Gruesa"
        Contexto = PizzaClass(masa: tipoMasa, tamano: tamanoPizza, queso: "", ingredientesPizza: [""])
        pushControllerWithName("Quesos", context: Contexto)

    }
    @IBAction func crujiente() {
        tipoMasa = "Masa Crujiente"
        Contexto = PizzaClass(masa: tipoMasa, tamano: tamanoPizza, queso: "", ingredientesPizza: [""])
        pushControllerWithName("Quesos", context: Contexto)

    }
}
