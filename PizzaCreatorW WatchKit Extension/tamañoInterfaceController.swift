//
//  tamañoInterfaceController.swift
//  PizzaCreatorW
//
//  Created by Dani Mangtani Madani on 13/9/16.
//  Copyright © 2016 Dani Mangtani Madani. All rights reserved.
//

import WatchKit
import Foundation


class tamañoInterfaceController: WKInterfaceController {

    var tamaño = ""
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    @IBAction func buttonTamano() {
        
        var tam = tamano(t: "")
        pushControllerWithName("SecondScreen", context: tam)
        switch tamano.self {
        case :
            tamaño = "pequeña"
        case "dos":
            tamaño = "mediana"
        case "tres":
            tamaño = "grande"
        default:
            break
        }
    }
    

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
