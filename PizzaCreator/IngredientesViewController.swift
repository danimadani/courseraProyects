//
//  IngredientesViewController.swift
//  PizzaCreator
//
//  Created by Dani Mangtani Madani on 24/8/16.
//  Copyright © 2016 Dani Mangtani Madani. All rights reserved.
//

import UIKit

class IngredientesViewController: UIViewController {
    
    var masa = ""
    var tamaño = ""
    var queso = ""
    var ingredientes = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        //labelTamaño.text = "Tamaño: \(tamaño)"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func buttomIngredientes(sender: AnyObject) {
        switch sender.tag {
        case 1: //Jamón
            if !ingredientes.contains("Jamón") { // No tiene jamón -> Lo metemos
                guard self.ingredientes.count < 5 else{return}
                ingredientes.append("Jamón")
                // Cambias el título
                sender.setTitle(sender.titleForState(.Normal)! + " ✅", forState: .Normal)
            }else{ // Ya contiene jamón -> Lo quitamos
                guard let i = self.ingredientes.indexOf("Jamón") else{return}
                self.ingredientes.removeAtIndex(i)
                sender.setTitle(sender.titleForState(.Normal)!.stringByReplacingOccurrencesOfString(" ✅", withString: ""), forState: .Normal)
            }
        case 2: //Pepperoni
            if !ingredientes.contains("Pepperoni") {
                guard self.ingredientes.count < 5 else{return}
                ingredientes.append("Pepperoni")
                sender.setTitle(sender.titleForState(.Normal)! + " ✅", forState: .Normal)
            }else{
                guard let j = self.ingredientes.indexOf("Pepperoni") else{return}
                self.ingredientes.removeAtIndex(j)
                sender.setTitle(sender.titleForState(.Normal)!.stringByReplacingOccurrencesOfString(" ✅", withString: ""), forState: .Normal)
            }
            case 3: //Pavo
                if !ingredientes.contains("Pavo") {
                    guard self.ingredientes.count < 5 else{return}
                    ingredientes.append("Pavo")
                    sender.setTitle(sender.titleForState(.Normal)! + " ✅", forState: .Normal)
                }else{
                    guard let n = self.ingredientes.indexOf("Pavo") else{return}
                    self.ingredientes.removeAtIndex(n)
                    sender.setTitle(sender.titleForState(.Normal)!.stringByReplacingOccurrencesOfString(" ✅", withString: ""), forState: .Normal)
            }
        case 4: //Salchicahas
            if !ingredientes.contains("Salchichas") {
                guard self.ingredientes.count < 5 else{return}
                ingredientes.append("Salchichas")
                sender.setTitle(sender.titleForState(.Normal)! + " ✅", forState: .Normal)
            }else{
                guard let m = self.ingredientes.indexOf("Salchichas") else{return}
                self.ingredientes.removeAtIndex(m)
                sender.setTitle(sender.titleForState(.Normal)!.stringByReplacingOccurrencesOfString(" ✅", withString: ""), forState: .Normal)
            }
        case 5: //Aceitunas
            if !ingredientes.contains("Aceitunas") {
                guard self.ingredientes.count < 5 else{return}
                ingredientes.append("Aceitunas")
                sender.setTitle(sender.titleForState(.Normal)! + " ✅", forState: .Normal)
            }else{
                guard let t = self.ingredientes.indexOf("Aceitunas") else{return}
                self.ingredientes.removeAtIndex(t)
                sender.setTitle(sender.titleForState(.Normal)!.stringByReplacingOccurrencesOfString(" ✅", withString: ""), forState: .Normal)
            }

        case 6: //Cebolla
            if !ingredientes.contains("Cebolla") {
                guard self.ingredientes.count < 5 else{return}
                ingredientes.append("Cebolla")
                sender.setTitle(sender.titleForState(.Normal)! + " ✅", forState: .Normal)
            }else{
                guard let q = self.ingredientes.indexOf("Cebolla") else{return}
                self.ingredientes.removeAtIndex(q)
                sender.setTitle(sender.titleForState(.Normal)!.stringByReplacingOccurrencesOfString(" ✅", withString: ""), forState: .Normal)
            }

        case 7: //Pimiento
            if !ingredientes.contains("Pimiento") {
                guard self.ingredientes.count < 5 else{return}
                ingredientes.append("Pimiento")
                sender.setTitle(sender.titleForState(.Normal)! + " ✅", forState: .Normal)
            }else{
                guard let o = self.ingredientes.indexOf("Pimiento") else{return}
                self.ingredientes.removeAtIndex(o)
                sender.setTitle(sender.titleForState(.Normal)!.stringByReplacingOccurrencesOfString(" ✅", withString: ""), forState: .Normal)
            }

        case 8: //Piña
            if !ingredientes.contains("Piña") {
                guard self.ingredientes.count < 5 else{return}
                ingredientes.append("Piña")
                sender.setTitle(sender.titleForState(.Normal)! + " ✅", forState: .Normal)
            }else{
                guard let a = self.ingredientes.indexOf("Piña") else{return}
                self.ingredientes.removeAtIndex(a)
                sender.setTitle(sender.titleForState(.Normal)!.stringByReplacingOccurrencesOfString(" ✅", withString: ""), forState: .Normal)
            }

        case 9: //Anchoas
            if !ingredientes.contains("Anchoas") {
                guard self.ingredientes.count < 5 else{return}
                ingredientes.append("Anchoas")
                sender.setTitle(sender.titleForState(.Normal)! + " ✅", forState: .Normal)
            }else{
                guard let e = self.ingredientes.indexOf("Anchoas") else{return}
                self.ingredientes.removeAtIndex(e)
                sender.setTitle(sender.titleForState(.Normal)!.stringByReplacingOccurrencesOfString(" ✅", withString: ""), forState: .Normal)
            }

        case 10: //Carme
            if !ingredientes.contains("Carne") {
                guard self.ingredientes.count < 5 else{return}
                ingredientes.append("Carne")
                sender.setTitle(sender.titleForState(.Normal)! + " ✅", forState: .Normal)
            }else{
                guard let u = self.ingredientes.indexOf("Carne") else{return}
                self.ingredientes.removeAtIndex(u)
                sender.setTitle(sender.titleForState(.Normal)!.stringByReplacingOccurrencesOfString(" ✅", withString: ""), forState: .Normal)
            }

        default:
            break
        }
    }
    
    @IBAction func didTapOnTerminar(sender: UIButton) {
        if ingredientes.isEmpty {
            self.showAlert("Error", description: "Debes añadir algún ingrediente", buttonTitle: "Ok", completion: nil)
        }else{
            self.performSegueWithIdentifier("Terminar", sender: nil)
        }
    }
    /*
     Función que compruebe qué boton has pulsado.
     Al pulsar en un botón:
         - Comprobar que no exista en el array de ingredientes el ingrediente pulsado (función contains() -> array.contains(ingrediente))
         - Si no existe, lo metemos en la array y añadimos al texto del botón un ✅
         - Si existe, lo quitamos de la array y le quitamos el ✅ al texto del botón
     ( para cambiar el texto del botón usa la función setTitle(texto, forState: .Normal) )
     ( para acceder al texto del botón usa la función titleForState(.Normal) )
         - Si ya hay 5 ingredientes seleccionados que no te deje elegir más hasta que quites alguno
         - Añadir un botón de siguiente -> al pulsarlo vamos a la ventana final y le pasamos las 4 variables
         - Mostrar en la nueva ventana la pizza elegida: Tamaño, masa, queso e ingredientes
     */
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        let destination3 = segue.destinationViewController as! TerminarViewController
        destination3.masa = self.masa
        destination3.tamaño = self.tamaño
        destination3.queso = self.queso
        destination3.ingredientes = self.ingredientes
    }

}
