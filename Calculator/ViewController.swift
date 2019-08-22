//
//  ViewController.swift
//  Calculator
//
//  Created by Ryo Togashi on 2019-08-20.
//  Copyright © 2019 Ryo Togashi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var displayLabel: UILabel!
    
    var leftElement: String = ""
    var operatorElement: OperaterElement? = nil
    var rightElement: String = ""
    var leftRightFlag: LeftRightFlag = .Left
    var calculator: Calculator = Calculator()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonPointTapped(_ sender:
        UIButton) {
        self.addElement(".")
        self.showLabel()
    }

    @IBAction func buttonZeroTapped(_ sender: UIButton) {
        self.addElement("0")
        self.showLabel()
    }
    @IBAction func buttonOneTapped(_ sender: UIButton) {
        self.addElement("1")
        self.showLabel()
    }
    
    @IBAction func buttonTwoTapped(_ sender: UIButton) {
        self.addElement("2")
        self.showLabel()
    }
    
    @IBAction func buttonThreeTapped(_ sender: UIButton) {
        self.addElement("3")
        self.showLabel()
    }
    
    @IBAction func buttonFourTapped(_ sender: UIButton) {
        self.addElement("4")
        self.showLabel()
    }
    
    @IBAction func buttonFiveTapped(_ sender: UIButton) {
        self.addElement("5")
        self.showLabel()
    }
    
    @IBAction func buttonSixTapped(_ sender: UIButton) {
        self.addElement("6")
        self.showLabel()
    }
    
    @IBAction func buttonSevenTapped(_ sender: UIButton) {
        self.addElement("7")
        self.showLabel()
    }
    
    @IBAction func buttonEightTapped(_ sender: UIButton) {
        self.addElement("8")
        self.showLabel()
    }
    
    @IBAction func buttonNineTapped(_ sender: UIButton) {
        self.addElement("9")
        self.showLabel()
    }
    
    @IBAction func buttonClearTapped(_ sender: UIButton) {
        self.leftElement = ""
        self.rightElement = ""
        self.operatorElement = nil
        self.showLabel()
        self.toggleLeftRight()
    }
    
    @IBAction func buttonPercentTapped(_ sender: UIButton) {
        self.operatorElement = .Remainder
        self.showLabel()
        self.toggleLeftRight()
    }
    
    @IBAction func buttonMultiplierTapped(_ sender: UIButton) {
        self.operatorElement = .Multiply
        self.showLabel()
        self.toggleLeftRight()
    }
    
    @IBAction func buttonDividerTapped(_ sender: UIButton) {
        self.operatorElement = .Division
        self.showLabel()
        self.toggleLeftRight()
    }
    
    @IBAction func buttonMinusTapped(_ sender: UIButton) {
        self.operatorElement = .Minus
        self.showLabel()
        self.toggleLeftRight()
    }
    
    @IBAction func buttonPlusTapped(_ sender: UIButton) {
        self.operatorElement = .Plus
        self.showLabel()
        self.toggleLeftRight()
    }
    
    @IBAction func buttonToggleOperationTapped(_ sender: UIButton) {
    }
    
    @IBAction func buttonEqualTapped(_ sender: UIButton) {
        self.leftElement = String(calculator.calculate(Int(self.leftElement)!, Int(self.rightElement)!, self.operatorElement!))
        self.operatorElement = nil
        self.rightElement = ""
        self.showLabel()
    }
    
    private func addElement(_ x: String) {
        if leftRightFlag == .Left {
            self.leftElement += x
        } else {
            self.rightElement += x
        }
    }
    
    private func showLabel() {
        if self.leftElement == "" {
            
            displayLabel.text = "0"
        } else if self.operatorElement == nil {
            
            displayLabel.text = self.leftElement
        } else {
            
            displayLabel.text = self.leftElement + self.operatorElement!.rawValue + self.rightElement
        }
    }
    
    private func toggleLeftRight() {
        if self.leftRightFlag == .Left {
            self.leftRightFlag = .Right
        } else {
            self.leftRightFlag = .Left
        }
    }
}

enum LeftRightFlag {
    case Left
    case Right
}
