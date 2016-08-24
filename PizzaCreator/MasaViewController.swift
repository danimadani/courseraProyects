//
//  MasaViewController.swift
//  PizzaCreator
//
//  Created by Dani Mangtani Madani on 24/8/16.
//  Copyright © 2016 Dani Mangtani Madani. All rights reserved.
//

import UIKit

class MasaViewController: UIViewController {
    var masa = ""
    var tamaño = ""

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func buttonCambiarMasa(sender: UIButton) {
        switch sender.tag {
        case 1: //delgada
            masa = "Delgada"
        case 2: //crujiente
            masa = "Crujiente"
        case 3: //Gruesa
            masa = "Gruesa"
        default:
            break
        }
        self.performSegueWithIdentifier("Segundo", sender: nil)
    }
    


    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        let destination1 = segue.destinationViewController as! QuesoViewController
        destination1.masa = self.masa
        destination1.tamaño = self.tamaño
    }
    

}
