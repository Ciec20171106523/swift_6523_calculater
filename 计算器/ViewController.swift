//
//  ViewController.swift
//  计算器
//
//  Created by s20171106523 on 2018/10/27.
//  Copyright © 2018 s20171106523. All rights reserved.
//

import UIKit
var temp:Double = 0
var operateorFlag = 0
class ViewController: UIViewController {
    @IBOutlet  weak var LED:UITextField!
    @IBAction func BUTTON1(_ sender: Any) {
        LED.text = LED.text! + "1"
    }
    @IBAction func BUTTON2(_ sender: Any) {
        LED.text = LED.text! + "2"
    }
    @IBAction func BUTTON3(_ sender: Any) {
        LED.text = LED.text! + "3"
    }
    @IBAction func BUTTON4(_ sender: Any) {
        LED.text = LED.text! + "4"
    }
    @IBAction func BUTTON5(_ sender: Any) {
        LED.text = LED.text! + "5"
    }
    @IBAction func BUTTON6(_ sender: Any) {
        LED.text = LED.text! + "6"
    }
    @IBAction func BUTTON7(_ sender: Any) {
        LED.text = LED.text! + "7"
    }
    @IBAction func BUTTON8(_ sender: Any) {
        LED.text = LED.text! + "8"
    }
    @IBAction func BUTTON9(_ sender: Any) {
        LED.text = LED.text! + "9"
    }
    @IBAction func BUTTON0(_ sender: Any) {
        LED.text = LED.text! + "0"
    }
    @IBAction func BUTTONDUT(_ sender: Any) {
        LED.text = LED.text! + "."
    }
    
    
    @IBAction func ButtonAdd(_ sender: Any) {
        temp = Double(LED.text!)!
        LED.text = ""
        operateorFlag = 1
    }
    @IBAction func ButtonSub(_ sender: Any) {
        temp = Double(LED.text!)!
        LED.text = ""
        operateorFlag = 2
    }
    @IBAction func BUTTONCHEN(_ sender: Any) {
        temp = Double(LED.text!)!
        LED.text = ""
        operateorFlag = 3
    }
    @IBAction func BUTTONCHU(_ sender: Any) {
        temp = Double(LED.text!)!
        LED.text = ""
        operateorFlag = 4
    }
    @IBAction func BUTTONAC(_ sender: Any) {
        LED.text = ""
    }
    @IBAction func BUTTONResult(_ sender: Any) {
        if operateorFlag == 1{
            temp = temp + Double(LED.text!)!
            LED.text = "\(temp)"
        }
        if operateorFlag == 2{
            temp = temp - Double(LED.text!)!
            LED.text = "\(temp)"
        }
        if operateorFlag == 3{
            temp = temp * Double(LED.text!)!
            LED.text = "\(temp)"
        }
        if operateorFlag == 4{
            temp = temp / Double(LED.text!)!
            LED.text = "\(temp)"
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

