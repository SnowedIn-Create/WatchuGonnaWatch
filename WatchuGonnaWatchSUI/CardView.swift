//
//  CardView.swift
//  WatchuGonnaWatchSUI
//
//  Created by Onur Com on 10.03.2020.
//  Copyright © 2020 Onur Com. All rights reserved.
//

import SwiftUI

struct CardView: View {
    
    @Binding var name: String
    @Binding var title: String
    @Binding var genre: String
    @Binding var director: String
    
    var body: some View {
        VStack(alignment: .center){
            
            Image(name)
                .renderingMode(.original)
                .resizable()
                .padding(0.0)
                .cornerRadius(10.0)
                .aspectRatio(contentMode: .fit)
            VStack{
                Text(title)
                    .fontWeight(.bold)
                Text(genre)
                Text(director)
                
            }.foregroundColor(.white)
        }
        .padding(5.0)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(name: Binding.constant("1917"), title: Binding.constant("abc"), genre: Binding.constant("abc"), director: Binding.constant("abc"))
    }
}
