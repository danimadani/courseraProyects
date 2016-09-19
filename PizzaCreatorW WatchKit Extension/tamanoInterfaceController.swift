//
//  tamanoInterfaceController.swift
//  PizzaCreatorW
//
//  Created by Dani Mangtani Madani on 19/9/16.
//  Copyright © 2016 Dani Mangtani Madani. All rights reserved.
//

import WatchKit
import Foundation


class tamanoInterfaceController: WKInterfaceController {

    @IBAction func buttonPequena() {
        let peque = tamano(t: "Pequeña")
        pushControllerWithName("Tamaño", context: peque)
    }
    @IBAction func buttonMediana() {
        let med = tamano(t: "Mediana")
        pushControllerWithName("Tamaño", context: med)
    }
    @IBAction func buttonGrande() {
        let gr = tamano(t: "Grande")
        pushControllerWithName("Tamaño", context: gr)
    }
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

}
