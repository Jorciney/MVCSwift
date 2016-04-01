//
//  ViewController.swift
//  MVCSwift
//
//  Created by user116613 on 3/17/16.
//  Copyright © 2016 user116613. All rights reserved.
//

import UIKit

class IncrementorViewController: UIViewController, IncrementorDelegate {

    
    //MARK: IBOutlets
    
    @IBOutlet weak var myLabel: UILabel!
    
    
    //MARK : Instance Properties
   //var rootIncrementor=Incrementor(value:0)
    var incrementor:Incrementor?
    // var teller=0
    var collorArray=[UIColor .orangeColor(), UIColor .greenColor(), UIColor .purpleColor(), UIColor .yellowColor(), UIColor .redColor(), UIColor .blueColor(), UIColor .brownColor(), UIColor .lightGrayColor()]

    
    
    
    //MARK:ViewController LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.myLabel.text="Value =\(self.incrementor?.currentValue ?? 0)"
        self.incrementor?.delegate = self;
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func decrementButton(sender: AnyObject) {
        self.incrementor?.decrement()
    }
    @IBAction func actionButton(sender: AnyObject) {
        self.incrementor?.increment()
         let i=Int(arc4random_uniform(UInt32(collorArray.count)))
        self.view.backgroundColor=collorArray[i]
    }

    
    //MARK; - Incrementor Delegate
    func incrementorCurrentValueHasChanged(incrementor: Incrementor, value: Int) {
         self.myLabel.text = "Value = \(self.incrementor?.currentValue ?? 0)"
    }
    func incrementorHasBeenDecremented(incrementor: Incrementor) {
        self.view.backgroundColor=UIColor .whiteColor()
    }
    func incrementorHasBeenIncremented(incrementor: Incrementor) {
        //
    }
    func incrementorHasBeenReset(incrementor: Incrementor) {
    }
    

}

