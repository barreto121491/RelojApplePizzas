//
//  Ingredientes.swift
//  PizzaWatch
//
//  Created by Arturo Barreto Villafán on 11/28/15.
//  Copyright © 2015 Arturo Barreto Villafán. All rights reserved.
//

import WatchKit
import Foundation


class Ingredientes: WKInterfaceController {
    
    
    var tipoQueso = ""
    var tamanoPizza = ""
    var tipoMasa = ""
    var ingredientes : [String] = []
    var Contexto = PizzaClass(masa: "", tamano: "", queso: "", ingredientesPizza : [""])
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        let c = context as! PizzaClass
        
        tamanoPizza = c.tamanoPizza
        tipoMasa = c.tipoMasa
        tipoQueso = c.tipoQueso
        
        print("\(c.tamanoPizza), \(c.tipoMasa), \(c.tipoQueso)")

        
        print(c.tipoQueso)
        
        
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
    
    
    
    
    @IBAction func Jamon() {
         ingredientes.append("Jamon")
        Contexto = PizzaClass(masa: tipoMasa, tamano: tamanoPizza, queso: tipoQueso, ingredientesPizza: ingredientes)
        
        if ingredientes.count == 5{
            pushControllerWithName("Confirmacion", context: Contexto)
        }
        if ingredientes.count >= 5{
            ingredientes.removeAll()
        }
    }
    
    
    @IBAction func Peperoni() {
        ingredientes.append("Pepperoni")
        Contexto = PizzaClass(masa: tipoMasa, tamano: tamanoPizza, queso: tipoQueso, ingredientesPizza: ingredientes)
        if ingredientes.count == 5{
            pushControllerWithName("Confirmacion", context: Contexto)
        }
        if ingredientes.count >= 5{
            ingredientes.removeAll()
        }

    }
    
    @IBAction func pavo() {
        ingredientes.append("Pavo")
        Contexto = PizzaClass(masa: tipoMasa, tamano: tamanoPizza, queso: tipoQueso, ingredientesPizza: ingredientes)
        if ingredientes.count == 5{
            pushControllerWithName("Confirmacion", context: Contexto)
        }
        if ingredientes.count >= 5{
            ingredientes.removeAll()
        }
    }
    
    
    @IBAction func salchicha() {
        
        ingredientes.append("Salchicha")
        Contexto = PizzaClass(masa: tipoMasa, tamano: tamanoPizza, queso: tipoQueso, ingredientesPizza: ingredientes)
        if ingredientes.count == 5{
            pushControllerWithName("Confirmacion", context: Contexto)
        }
        if ingredientes.count >= 5{
            ingredientes.removeAll()
        }
    }
    
    
    @IBAction func aceituna() {
        ingredientes.append("Aceituna")
        Contexto = PizzaClass(masa: tipoMasa, tamano: tamanoPizza, queso: tipoQueso, ingredientesPizza: ingredientes)
        if ingredientes.count == 5{
            pushControllerWithName("Confirmacion", context: Contexto)
        }
        if ingredientes.count >= 5{
            ingredientes.removeAll()
        }
    }
    
    
    @IBAction func cebolla() {
        ingredientes.append("Cebolla")
        Contexto = PizzaClass(masa: tipoMasa, tamano: tamanoPizza, queso: tipoQueso, ingredientesPizza: ingredientes)
        if ingredientes.count == 5{
            pushControllerWithName("Confirmacion", context: Contexto)
        }
        if ingredientes.count >= 5{
            ingredientes.removeAll()
        }
    }
    
    
    @IBAction func pimiento() {
        
        ingredientes.append("Pimiento")
        Contexto = PizzaClass(masa: tipoMasa, tamano: tamanoPizza, queso: tipoQueso, ingredientesPizza: ingredientes)
        if ingredientes.count == 5{
            pushControllerWithName("Confirmacion", context: Contexto)
        }
        if ingredientes.count >= 5{
            ingredientes.removeAll()
        }
    }
    
    
    @IBAction func pinaapple() {
        ingredientes.append("Piña")
        Contexto = PizzaClass(masa: tipoMasa, tamano: tamanoPizza, queso: tipoQueso, ingredientesPizza: ingredientes)
        if ingredientes.count == 5{
            pushControllerWithName("Confirmacion", context: Contexto)
        }
        if ingredientes.count >= 5{
            ingredientes.removeAll()
        }
    }
    
    
    @IBAction func anchoa() {
        ingredientes.append("Anchoa")
        Contexto = PizzaClass(masa: tipoMasa, tamano: tamanoPizza, queso: tipoQueso, ingredientesPizza: ingredientes)
        if ingredientes.count == 5{
            pushControllerWithName("Confirmacion", context: Contexto)
        }
        if ingredientes.count >= 5{
            ingredientes.removeAll()
        }
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

}
