//
//  Revisa.swift
//  PizzaCreatorW
//
//  Created by Dani Mangtani Madani on 19/9/16.
//  Copyright © 2016 Dani Mangtani Madani. All rights reserved.
//

import WatchKit
import Foundation


class Revisa: WKInterfaceController {
    
    @IBOutlet var labelTamano: WKInterfaceLabel!
    

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        let t=context as! tamano
        labelTamano.setText(String(t.tamano))
        
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
