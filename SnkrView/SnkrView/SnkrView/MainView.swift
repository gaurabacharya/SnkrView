//
//  MainView.swift
//  SnkrView
//
//  Created by Gaurab Acharya on 2021-09-18.
//  Copyright © 2021 Gaurab Acharya. All rights reserved.
//

import Foundation
import SwiftUI

struct MainView: View {
    
    @State private var showSheet: Bool = false
    @State private var showImagePicker: Bool = false
    @State private var sourceType: UIImagePickerController.SourceType = .camera
    
    @State private var image: UIImage?
    
    var body: some View {
            NavigationView {
                
                VStack {
                    
                    Image(uiImage: image ?? UIImage(named: "placeholder")!)
                    .resizable()
                        .frame(width: 300, height: 300)
                    
                    Button("Choose Picture") {
                        self.showSheet = true
                    }.padding(10)
                        .accentColor(Color.white)
                        .background(Color.black)
                        .actionSheet(isPresented: $showSheet) {
                            ActionSheet(title: Text("Select Photo"),
                                        message: Text("Choose"), buttons: [
                                            .default(Text("Photo Library")) {
                                                self.showImagePicker = true
                                                self.sourceType = .photoLibrary
                                            },
                                            .default(Text("Camera")) {
                                                self.showImagePicker = true
                                                self.sourceType = .camera
                                            },
                                            .cancel()
                            ])
                        }
                
                    .navigationBarTitle("SNKRView")
                }.sheet(isPresented: $showImagePicker) {
                    ImagePicker(image: self.$image, isShown: self.$showImagePicker, sourceType: self.sourceType)
                }
                
        }

    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
