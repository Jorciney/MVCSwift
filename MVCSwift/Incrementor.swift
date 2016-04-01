//
//  Incrementor.swift
//  MVCSwift
//
//  Created by user116613 on 3/17/16.
//  Copyright © 2016 user116613. All rights reserved.
//

import Foundation
class Incrementor{
    
    weak var delegate: IncrementorDelegate?
    
    private (set) var currentValue:Int{
        didSet{
            delegate?.incrementorCurrentValueHasChanged(self, value: currentValue)
        }
    }
    init(){
        currentValue=0;
    }
    
    init(value:Int){
        currentValue=value
    }
    
    func increment(){
        currentValue++
        delegate?.incrementorHasBeenIncremented(self)
    }
    func decrement(){
        currentValue--
        delegate?.incrementorHasBeenDecremented(self)
    }
    func reset(){
    currentValue=0
        delegate?.incrementorHasBeenReset(self)
    }
    


}
protocol IncrementorDelegate: class{
    func incrementorCurrentValueHasChanged(incrementor: Incrementor, value: Int)
    func incrementorHasBeenIncremented(incrementor:Incrementor)
    func incrementorHasBeenDecremented(incrementor:Incrementor)
    func incrementorHasBeenReset(incrementor:Incrementor)
}