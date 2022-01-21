//
//  ViewController.swift
//  IMC
//
//  Created by Viviane Verbeno on 22/12/2021.
//  Copyright © 2021 Viviane Verbeno. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tf_peso: UITextField!
    @IBOutlet weak var tf_altura: UITextField!
    @IBOutlet weak var lb_resultado: UILabel!
    @IBOutlet weak var im_resultado: UIImageView!
    @IBOutlet weak var vi_resultado: UIView!
    
    var imc: Double = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }

    @IBAction func calcular(_ sender: Any) {
        if let weight = Double(tf_peso.text!), let height = Double(tf_altura.text!) {
            imc = weight / (height*height)
            showResolts()
            
        }
    }
    
    func showResolts(){
        var resolt: String = ""
        var image: String = ""
        switch imc {
            case 0..<16:
                resolt = "Magreza"
                image = "abaixo"
            case 16..<18.5:
                resolt = "Abaixo do peso"
                image = "abaixo"
            case 18.5..<25:
                resolt = "Peso ideal"
                image = "ideal"
            case 25..<30:
                resolt = "Sobrepeso"
                image = "sobre"
            default:
                resolt = "Obesidade"
                image = "obesidade"
        }
        lb_resultado.text = resolt
        im_resultado.image = UIImage(named: image)
        vi_resultado.isHidden = false
        view.endEditing(true)
        
    }
}

