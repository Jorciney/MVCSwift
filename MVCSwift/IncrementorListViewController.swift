//
//  IncrementorListViewController.swift
//  MVCSwift
//
//  Created by user116613 on 3/17/16.
//  Copyright © 2016 user116613. All rights reserved.
//

import UIKit

class IncrementorListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
   
    
    //MARK: - Properties
    
    @IBOutlet weak var tableView: UITableView!
    var incrementors=[Incrementor]()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.delegate=self
        self.tableView.dataSource=self
        
        
        for i in 0...20{
            let newIncrementor=Incrementor(value: i)
            self.incrementors.append(newIncrementor)
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1;
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20;
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCellWithIdentifier("myCellIdentifier") as! IncrementorTableViewCell
        let currentIncrementor = self.incrementors[indexPath.row]
        
        cell.configureWithIncrementor(currentIncrementor)
    
        return cell;
    }
    @IBAction func resetActionButton(sender: UIBarButtonItem) {
        for i in incrementors{
            i.reset()
            
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
