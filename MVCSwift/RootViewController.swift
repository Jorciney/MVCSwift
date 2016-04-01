//
//  RootViewController.swift
//  MVCSwift
//
//  Created by user116613 on 3/17/16.
//  Copyright © 2016 user116613. All rights reserved.
//

import UIKit

class RootViewController: UIViewController {
    
//MARK: - Properties
    @IBOutlet weak var myRootLabel: UILabel!
    
    let rootIncrementor = Incrementor(value:0)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(animated: Bool) {
        myRootLabel.text="Value = \(rootIncrementor.currentValue)"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier=="mySegueIdentifier"{
        print("Display Counter")
        let destinationVC=segue.destinationViewController as! IncrementorViewController
            destinationVC.incrementor = self.rootIncrementor
        }
    }
    
    //}

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
