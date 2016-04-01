//
//  IncrementorTableViewCell.swift
//  MVCSwift
//
//  Created by user116613 on 3/17/16.
//  Copyright © 2016 user116613. All rights reserved.
//

import UIKit

class IncrementorTableViewCell: UITableViewCell, IncrementorDelegate{
    @IBOutlet weak var myCell: UILabel!
    var incrementor=Incrementor()
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func configureWithIncrementor(incrementor: Incrementor){
        self.incrementor=incrementor;
        self.incrementor.delegate=self
        self.myCell.text="\(self.incrementor.currentValue)"
    }
    
    
    //MARK: - Action Buttons
    
    @IBAction func addButton(sender: AnyObject) {
        self.incrementor.increment()
        
    }
    @IBAction func decrementButton(sender: AnyObject) {
        self.incrementor.decrement()
        
    
    }
    
    
    func incrementorCurrentValueHasChanged(incrementor: Incrementor, value: Int) {
        self.myCell.text="\(self.incrementor.currentValue)"
    }
    
    func incrementorHasBeenReset(incrementor: Incrementor) {
        
    }
    func incrementorHasBeenDecremented(incrementor: Incrementor) {
        
    }
    func incrementorHasBeenIncremented(incrementor: Incrementor) {

    }
   
}
