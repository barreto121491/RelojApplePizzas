//
//  TipoQueso.swift
//  PizzaWatch
//
//  Created by Arturo Barreto Villafán on 11/28/15.
//  Copyright © 2015 Arturo Barreto Villafán. All rights reserved.
//

import WatchKit
import Foundation


class TipoQueso: WKInterfaceController {
    
    var tipoQueso = ""
    var tamanoPizza = ""
    var tipoMasa = ""
    var Contexto = PizzaClass(masa: "", tamano: "", queso: "", ingredientesPizza : [""])

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        let c = context as! PizzaClass
        
        tamanoPizza = c.tamanoPizza
        tipoMasa = c.tipoMasa
 
        print(c.tipoMasa)
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

    @IBAction func cheddar() {
         tipoQueso = "Queso Cheddar"
        Contexto = PizzaClass(masa: tipoMasa, tamano: tamanoPizza, queso: tipoQueso, ingredientesPizza: [""])
        pushControllerWithName("Ingredientes", context: Contexto)
        
    }
    @IBAction func moza() {
        
        
        tipoQueso = "Queso Mozarela"
        Contexto = PizzaClass(masa: tipoMasa, tamano: tamanoPizza, queso: tipoQueso, ingredientesPizza: [""])
         pushControllerWithName("Ingredientes", context: Contexto)
    }
    
    
    @IBAction func parme() {
          tipoQueso = "Queso Parmesano"
        Contexto = PizzaClass(masa: tipoMasa, tamano: tamanoPizza, queso: tipoQueso, ingredientesPizza: [""])
         pushControllerWithName("Ingredientes", context: Contexto)
    }
    
    @IBAction func sinQueso() {
        
        tipoQueso = "Sin Queso"
        Contexto = PizzaClass(masa: tipoMasa, tamano: tamanoPizza, queso: tipoQueso, ingredientesPizza: [""])
         pushControllerWithName("Ingredientes", context: Contexto)
    }
    
    
    
}
