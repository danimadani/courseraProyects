//
//  TamanoViewController.swift
//  PizzaCreator
//
//  Created by Dani Mangtani Madani on 24/8/16.
//  Copyright © 2016 Dani Mangtani Madani. All rights reserved.
//

import UIKit

class TamanoViewController: UIViewController {

    var tamaño = ""
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func buttomCambiarTamano(sender: UIButton) {
        switch sender.tag {
        case 1: //pequeña
            tamaño = "Pequeña"
        case 2: //mediana
            tamaño = "Mediana"
        case 3: //Grande
            tamaño = "Grande"
        default:
            break
        }
        self.performSegueWithIdentifier("Primero", sender: nil)
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        let destination = segue.destinationViewController as! MasaViewController
        destination.tamaño = self.tamaño
    }

}
