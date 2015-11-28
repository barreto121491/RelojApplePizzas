//
//  ConfirmacionPizza.swift
//  PizzaWatch
//
//  Created by Arturo Barreto Villafán on 11/28/15.
//  Copyright © 2015 Arturo Barreto Villafán. All rights reserved.
//

import WatchKit
import Foundation


class ConfirmacionPizza: WKInterfaceController {
    var elementosPizza : [String] = []
    var ingredientesPizza : [String] = []

    @IBOutlet var tablaIngredientes: WKInterfaceTable!
    @IBOutlet var tablaContenido: WKInterfaceTable!
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        let c = context as! PizzaClass
        
        
        elementosPizza.append(c.tamanoPizza)
        elementosPizza.append(c.tipoMasa)
        elementosPizza.append(c.tipoQueso)
        ingredientesPizza = c.ingredientes
        cargarElementosPizza()
        cargarIngredientes()
        
        print(c.ingredientes)
        
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
    
    func cargarElementosPizza(){
        tablaContenido.setNumberOfRows(elementosPizza.count, withRowType: "Cell")
        var i = 0
        for item in elementosPizza{
            
            let row = tablaContenido.rowControllerAtIndex(i) as! filaPizzaContenido
            row.lblContenidoPizza.setText(item)
            i++
        }
    }
    func cargarIngredientes(){
        tablaIngredientes.setNumberOfRows(ingredientesPizza.count, withRowType: "Cell2")
        var i = 0
        
        for ingre in ingredientesPizza{
            let row = tablaIngredientes.rowControllerAtIndex(i) as!  filaIngredientes
            row.lblIngredientes.setText(ingre)
            i++
        }
    }

    @IBAction func si() {
        
        pushControllerWithName("pizzaReady", context: nil)
    }
    
    @IBAction func no() {
        pushControllerWithName("Tamano", context: nil)
        
        
    }
    

}
