//
//  Buttons.swift
//  cookingPan WatchKit Extension
//
//  Created by Vincenzo Manno on 21/01/2020.
//  Copyright © 2020 Vincenzo Manno. All rights reserved.
//

import SwiftUI
import Combine

extension Int: Identifiable {
    public var id: Int {
        self
    }
}

struct Topic: Identifiable {
    let title: String
    let subtitle: String
    let image: String
    let color: UIColor
    let tag: Int
    
    var id: String{
        title
    }
}

class Buttons: ObservableObject {
    @Published var topics: [Topic] = [
        Topic(title: "First", subtitle: "Courses", image: "forchette.png", color: .red, tag: 1),
        Topic(title: "Second", subtitle: "Courses", image: "pollo.png", color: .cyan, tag: 2),
        Topic(title: "Dessert", subtitle: "", image: "dolce.png", color: .cyan, tag: 3)]
}
