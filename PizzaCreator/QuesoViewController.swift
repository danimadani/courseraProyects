//
//  QuesoViewController.swift
//  PizzaCreator
//
//  Created by Dani Mangtani Madani on 24/8/16.
//  Copyright © 2016 Dani Mangtani Madani. All rights reserved.
//

import UIKit

class QuesoViewController: UIViewController {
    
    var masa = ""
    var tamaño = ""
    var queso = ""

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func buttomQueso(sender: AnyObject) {
        switch sender.tag {
        case 1: //mozzarela
            queso = "Mozzarela"
        case 2: //Cheddar
            queso = "Cheddar"
        case 3: //Parmesano
            queso = "Parmesano"
        case 4: //Sin queso
            queso = "Sin queso"
        default:
            break
        }
        self.performSegueWithIdentifier("Tercero", sender: nil)
    }
    
    

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        let destination2 = segue.destinationViewController as! IngredientesViewController
        destination2.masa = self.masa
        destination2.tamaño = self.tamaño
        destination2.queso = self.queso
    }


}
