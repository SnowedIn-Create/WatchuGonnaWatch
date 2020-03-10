//
//  ContentView.swift
//  WatchuGonnaWatchSUI
//
//  Created by Onur Com on 9.03.2020.
//  Copyright © 2020 Onur Com. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var names = ["1917", "bwidow", "kout"]
    @State var titles = ["1917", "Black Widow", "Knives Out"]
    @State var genres = ["War", "Action", "Comedy"]
    @State var directors = ["Abc", "Cba", "Bca"]
    
    @State var writtenText = ""
    @State private var showModal: Bool = false
    
    var body: some View {
        
        
        
        ZStack{
            
            LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .topLeading , endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            
            
            
            ScrollView(.vertical) {
                
                VStack{
                    
                    HStack{
                        
                        Spacer()
                        Button(action: {
                            if self.writtenText == "Black Widow" {
                                self.titles[0] = "Black Widow"
                                self.names[0] = "bwidow"
                            }
                            else if self.writtenText == "" {
                                self.titles[0] = "1917"
                                self.names[0] = "1917"
                            }
                        }) {
                            HStack{
                                Image(systemName: "magnifyingglass")
                                    .foregroundColor(.black)
                                TextField("Search", text : $writtenText)
                                
                                Spacer()
                            }
                            
                        }
                    }
                    
                    
                    VStack(spacing: 15.0) {
                        Spacer()
                        
                        HStack(alignment: .center, spacing: 15.0){
                            //TODO: - Configure Button Functionality and allow the modal view to change according to selection
                            Button(action: {
                                self.showModal = true
                                
                            }) {
                                
                                CardView(name: $names[0], title: $titles[0], genre: $genres[0], director: $directors[0])
                                
                                CardView(name: $names[1], title: $titles[1], genre: $genres[1], director: $directors[1])
                            }.sheet(isPresented: self.$showModal) {
                             DetailView()
                            }
                            
                            
                            
                            
                            
                            
                        }
                        
                        HStack(alignment: .center, spacing: 15.0){
                            CardView(name: $names[1], title: $titles[1], genre: $genres[1], director: $directors[1])
                            
                            CardView(name: $names[2], title: $titles[2], genre: $genres[2], director: $directors[2])
                            
                            
                        }
                        HStack(alignment: .center, spacing: 15.0){
                            CardView(name: $names[1], title: $titles[1], genre: $genres[1], director: $directors[1])
                            
                            CardView(name: $names[2], title: $titles[2], genre: $genres[2], director: $directors[2])
                            
                            
                        }
                    }
                    
                    
                    
                    
                }
            }
            .padding(.horizontal)
        }
    }
    
    
    
    
    
}
            


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
