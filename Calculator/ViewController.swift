//
//  ViewController.swift
//  Calculator
//
//  Created by Yuki Sakata on 2016/02/07.
//  Copyright © 2016年 Yuki Sakata. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet var label: UILabel!
    
    
    var number: Int = 0
    var number2: Int = 0
    var oparation: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func select3(){
        number = number*10 + 3
        label.text = String(number)
    }
    
    @IBAction func select4(){
        number = number*10 + 4
        label.text = String(number)
    }
    
    
    @IBAction func plus(){
        //plusボタンを押した時に、labelに0が表示される
        label.text = "0"
        
        oparation = 1
        number2 = number
        number = 0
    }

    @IBAction func equal(){
        if oparation == 1{
            label.text = String(number + number2)
        }
    }
    

}

