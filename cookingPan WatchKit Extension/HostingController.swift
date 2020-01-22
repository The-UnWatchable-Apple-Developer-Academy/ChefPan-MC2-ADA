//
//  HostingController.swift
//  cookingPan WatchKit Extension
//
//  Created by Vincenzo Manno on 21/01/2020.
//  Copyright © 2020 Vincenzo Manno. All rights reserved.
//

import WatchKit
import Foundation
import SwiftUI

class HostingController: WKHostingController<ContentView> {
    
    
    override var body: ContentView {
        
        return ContentView(model: Buttons())
    }
    
    
}
