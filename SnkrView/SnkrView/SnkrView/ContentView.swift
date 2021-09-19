//
//  ContentView.swift
//  SnkrView
//
//  Created by Gaurab Acharya on 2021-09-18.
//  Copyright © 2021 Gaurab Acharya. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        TabView {
            MainView()
                .tabItem {
                    Image(systemName: "camera")
                    Text("Image Upload")
                }
            GettingStartedView()
                .tabItem {
                    Image(systemName: "info")
                    Text("Getting Started")
            }
        }
        .accentColor(.black)

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


