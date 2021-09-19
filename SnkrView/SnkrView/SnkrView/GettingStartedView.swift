//
//  GettingStartedView.swift
//  SnkrView
//
//  Created by Gaurab Acharya on 2021-09-18.
//  Copyright © 2021 Gaurab Acharya. All rights reserved.
//

import Foundation
import SwiftUI

struct GettingStartedView: View {
    
    var body: some View {
        VStack (spacing: 30) {
            Text("Getting Started")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .underline()
            
        
            Text("Upload a picture of sneakers that are compatible with the app in the Image Upload tab to find out what type of sneaker they are.").multilineTextAlignment(.leading)
            
            Image("colourJ's")
                .resizable()
                .frame(width: 300,
                       height: 300)
                
                         
            Text("*Currently only Jordan 1's to Jordan 12's are compatible with the app. Sneaker database will be updating.*")
        }.padding(20)
            
    }
    
}

struct GettingStartedView_Previews: PreviewProvider {
    static var previews: some View {
        GettingStartedView()
    }
}
