//
//  DetailView.swift
//  WatchuGonnaWatchSUI
//
//  Created by Onur Com on 10.03.2020.
//  Copyright © 2020 Onur Com. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            ScrollView{
                Spacer()
                VStack{
                    Image("m7")
                        .resizable()
                        .cornerRadius(10)
                        .aspectRatio(contentMode: .fit)
                    HStack{
                        Text("Mission: Impossible - Fallout")
                            
                            .font(.title)
                        Text("2018")
                            .foregroundColor(.secondary)
                        
                    }
                    
                    HStack{
                        Image(systemName: "heart")
                        Text("User Score: 73 %")
                    }
                    Text("Overview")
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                    Text("When an IMF mission ends badly, the world is faced with dire consequences. As Ethan Hunt takes it upon himself to fulfill his original briefing, the CIA begin to question his loyalty and his motives. The IMF team find themselves in a race against time, hunted by assassins while trying to prevent a global catastrophe.")
                        .font(.body)
                        .fontWeight(.light)
                        .padding(.all)
                    
                    Spacer()
                }
                .foregroundColor(.white)
            }
            .padding(.horizontal)
        }
        
    }
    
    
    
    
    
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
