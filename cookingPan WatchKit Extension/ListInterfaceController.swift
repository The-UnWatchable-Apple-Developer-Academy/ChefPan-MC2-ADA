//
//  ListInterfaceController.swift
//  onlymusic-watch WatchKit Extension
//
//  Created by salvatore frattolillo on 22/01/2020.
//  Copyright © 2020 Anshul  Mohil. All rights reserved.
//

import UIKit
import WatchKit
import Foundation

class ListInterfaceController: WKInterfaceController, WKCrownDelegate  {
    
    override func willActivate() {
        super.willActivate()
        self.setTitle(text4)
    }
    
    func createListView(name: String)
    {
        text4 = name
        pushController(withName: "player", context: nil)
    }
    @IBAction func startRecipe() {
       createListView(name: text4)
    }
    
}
