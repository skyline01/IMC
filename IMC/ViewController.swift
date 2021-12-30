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
    
    var imc: Double = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
        
    }
}

