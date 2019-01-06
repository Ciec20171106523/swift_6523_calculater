//
//  ViewController.swift
//  计算器
//
//  Created by s20171106523 on 2018/10/27.
//  Copyright © 2018 s20171106523. All rights reserved.
//
import UIKit
class ViewController: UIViewController {
    @IBOutlet  weak var LED:UITextField!
    var temp:Double = 0
    var tempflag=0
    var code:Double=0
    var N=0
    @IBAction func BUTTON1(_ sender: Any) {
        if(tempflag==5)
        {
            LED.text=""
            tempflag=0
        }
        if(N>0)
        {
            LED.text=""
            LED.text = LED.text! + "1"
        }
        else
        {
            LED.text = LED.text! + "1"
        }
    }
    @IBAction func BUTTON2(_ sender: Any) {
        if(tempflag==5)
        {
            LED.text=""
            tempflag=0
        }
        if(N>0)
        {
            LED.text=""
            LED.text = LED.text! + "2"
        }
        else
        {
            LED.text = LED.text! + "2"
        }
    }
    @IBAction func BUTTON3(_ sender: Any) {
        if(tempflag==5)
        {
            LED.text=""
            tempflag=0
        }
        if(N>0)
        {
            LED.text=""
            LED.text = LED.text! + "3"
        }
        else
        {
            LED.text = LED.text! + "3"
        }
    }
    @IBAction func BUTTON4(_ sender: Any) {
        if(tempflag==5)
        {
            LED.text=""
            tempflag=0
        }
        if(N>0)
        {
            LED.text=""
            LED.text = LED.text! + "4"
        }
        else
        {
            LED.text = LED.text! + "4"
        }
    }
    @IBAction func BUTTON5(_ sender: Any) {
        if(tempflag==5)
        {
            LED.text=""
            tempflag=0
        }
        if(N>0)
        {
            LED.text=""
            LED.text = LED.text! + "5"
        }
        else
        {
            LED.text = LED.text! + "5"
        }
    }
    @IBAction func BUTTON6(_ sender: Any) {
        if(tempflag==5)
        {
            LED.text=""
            tempflag=0
        }
        if(N>0)
        {
            LED.text=""
            LED.text = LED.text! + "6"
        }
        else
        {
            LED.text = LED.text! + "6"
        }
    }
    @IBAction func BUTTON7(_ sender: Any) {
        if(tempflag==5)
        {
            LED.text=""
            tempflag=0
        }
        if(N>0)
        {
            LED.text=""
            LED.text = LED.text! + "7"
        }
        else
        {
            LED.text = LED.text! + "7"
        }
    }
    @IBAction func BUTTON8(_ sender: Any) {
        if(tempflag==5)
        {
            LED.text=""
            tempflag=0
        }
        if(N>0)
        {
            LED.text=""
            LED.text = LED.text! + "8"
        }
        else
        {
            LED.text = LED.text! + "8"
        }
    }
    @IBAction func BUTTON9(_ sender: Any) {
        if(tempflag==5)
        {
            LED.text=""
            tempflag=0
        }
        if(N>0)
        {
            LED.text=""
            LED.text = LED.text! + "9"
        }
        else
        {
            LED.text = LED.text! + "9"
        }
    }
    @IBAction func BUTTON0(_ sender: Any) {
        if(tempflag==5)
        {
            LED.text=""
            tempflag=0
        }
        if(N>0)
        {
            LED.text=""
            LED.text = LED.text! + "0"
        }
        else
        {
            LED.text = LED.text! + "0"
        }
    }
    @IBAction func BUTTONDUT(_ sender: Any) {
        LED.text = LED.text! + "."
    }
    
    
    @IBAction func ButtonAdd(_ sender: Any)
    {
        tempflag=1
        temp = temp + Double(LED.text!)!
        code = code + Double(LED.text!)!
        if(N>0)
        {
            LED.text="\(code)"
        }
        else
        {
            LED.text = ""
        }
        N=N+1
        
    }
    @IBAction func ButtonSub(_ sender: Any)
    {
        tempflag=2
        if(N>0)
        {
            temp = temp - Double(LED.text!)!
            code = code - Double(LED.text!)!
            LED.text="\(code)"
        }
        else
        {
            temp = Double(LED.text!)!
           code = Double(LED.text!)!
            LED.text = ""
        }
        N=N+1
    }
    @IBAction func BUTTONMUL(_ sender: Any) {
        tempflag=3
        if(N>0)
        {
            temp = temp * Double(LED.text!)!
            code = code * Double(LED.text!)!
            LED.text="\(code)"
        }
        else
        {
            temp = Double(LED.text!)!
            code =  Double(LED.text!)!
            LED.text = ""
        }
        N=N+1
    }
    @IBAction func BUTTONDIV(_ sender: Any) {
        tempflag=4
        if(N>0)
        {
            
            temp = temp / Double(LED.text!)!
            code = code / Double(LED.text!)!
            LED.text="\(code)"
        }
        else
        {
            temp = Double(LED.text!)!
            code = Double(LED.text!)!
            LED.text = ""
        }
        N=N+1
    }
    @IBAction func BUTTONAC(_ sender: Any) {
        LED.text = ""
        temp=0
        code=0
        N=0
    }
    @IBAction func BUTTONREM(_ sender: Any) {
        temp=Double(LED.text!)!
        LED.text=""
        temp=temp/100
        LED.text="\(temp)"
    }
    
    @IBAction func BUTTONNEG(_ sender: Any) {
        temp=Double(LED.text!)!
        LED.text=""
        temp = -temp
        LED.text="\(temp)"
    }
    @IBAction func BUTTONResult(_ sender: Any) {
        if (tempflag == 1){
            temp = temp + Double(LED.text!)!
            LED.text = "\(temp)"
        }
        if (tempflag == 2){
            temp = temp - Double(LED.text!)!
            LED.text = "\(temp)"
        }
        if (tempflag == 3){
            temp = temp * Double(LED.text!)!
            LED.text = "\(temp)"
        }
        if (tempflag == 4){
            temp = temp / Double(LED.text!)!
            LED.text = "\(temp)"
        }
        tempflag=5
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
}
