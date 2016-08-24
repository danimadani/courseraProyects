//
//  TerminarViewController.swift
//  PizzaCreator
//
//  Created by Dani Mangtani Madani on 24/8/16.
//  Copyright © 2016 Dani Mangtani Madani. All rights reserved.
//

import UIKit

class TerminarViewController: UIViewController {
    
    var tamaño = "lolo"
    var masa = ""
    var queso = ""
    var ingredientes = [String]()

    @IBOutlet weak var labelP: UILabel!
    @IBOutlet weak var labelMasa: UILabel!
    @IBOutlet weak var labelQueso: UILabel!
    @IBOutlet weak var labelIngredientes: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        labelP.text = "Tamaño: \(tamaño)"
        labelMasa.text = "Masa: \(masa)"
        labelQueso.text = "Queso: \(queso)"
        
        var texto = "Ingredientes: \n"
        for p in ingredientes {
            texto += "\n    - \(p)"

        }
        labelIngredientes.text = texto
    }
    
    @IBAction func buttonEnviar(sender: AnyObject) {
        showAlert("¡Oído cocina!", description: "Pizza pedida", buttonTitle: "Aceptar") { 
            self.navigationController?.popToRootViewControllerAnimated(true)
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
