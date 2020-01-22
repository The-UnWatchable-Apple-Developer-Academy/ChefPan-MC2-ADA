//
//  ContentView.swift
//  cookingPan WatchKit Extension
//
//  Created by Vincenzo Manno on 21/01/2020.
//  Copyright © 2020 Vincenzo Manno. All rights reserved.
//

import SwiftUI
import Combine
import UIKit




struct ContentView: View {
    
    @ObservedObject var model: Buttons
    
    var body: some View {
        List {
            ForEach(model.topics) { topic in
                
                //                 //  .listRowPlatterColor(Color(topic.color))
                if topic.tag == 1 {
                    NavigationLink(destinationName: "mainCourse") {
                        TopicCell(topic: topic)
                            .frame(height: 100.0)
                    }
                        
//                    .listRowPlatterColor(.init(.sRGB, red: 0.00000, green: 0.10250, blue: 0.51545, opacity: 1))
                    
                
                    
                }
                
                if topic.tag == 2 {
                    NavigationLink(destinationName: "mainCourse") {
                        TopicCell(topic: topic)
                            .frame(height: 100.0)
                    }
                        
//                    .listRowPlatterColor(.init(.sRGB, red: 0.38220, green: 0.75844, blue: 0.98523, opacity: 1))
                    
                }
                
                
                if topic.tag == 3 {
                                    NavigationLink(destinationName: "mainCourse") {
                                        TopicCell(topic: topic)
                                            .frame(height: 100.0)
                                    }
                                        
                //                    .listRowPlatterColor(.init(.sRGB, red: 0.38220, green: 0.75844, blue: 0.98523, opacity: 1))
                                    
                                }
            }
            
        }
        .listStyle(CarouselListStyle())
        .navigationBarTitle(Text("Chef Pan").foregroundColor(.yellow))
    }
    
    
}



struct TopicCell: View {
    var topic: Topic
    
    var body: some View {
        HStack{
            
            HStack{
                Image(uiImage: UIImage(named: topic.image )!)
                    .resizable().frame(width: 35.0, height: 35.0, alignment: .trailing)
                    .padding(.horizontal, 10.0)
                    .multilineTextAlignment(.trailing)
                
                VStack{
                    
                
                    Text(topic.title)
                        .font(.custom("SF-Compact-Text", size: 20))
                        .font(.title)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.trailing)
                        .padding(.leading, 8.0)
                        .frame(minWidth: 20, idealWidth: 40, maxWidth: 100, minHeight: 10, idealHeight: 12, maxHeight: 15, alignment: .center)
                    Text(topic.subtitle)
                        .font(.custom("SF-Pro-Rounded-Light", size: 13))
                        .fontWeight(.bold)
                        .multilineTextAlignment(.trailing)
                        .padding(.leading, 7.0)
                        .frame(minWidth: 20, idealWidth: 40, maxWidth: 100, minHeight: 10, idealHeight: 12, maxHeight: 15, alignment: .center)
                        
                    }
            }
                
            
        }
    }
    
}

struct ContentView_Preview: PreviewProvider {
    static var previews: some View {
        ContentView(model: Buttons())
    }
}


