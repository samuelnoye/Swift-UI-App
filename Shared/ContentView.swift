//
//  ContentView.swift
//  Shared
//
//  Created by Samuel Noye on 06/12/2021.
//

import SwiftUI

extension Image{
    func imageModifier()->some View {
        self
            .resizable()
            .scaledToFit()
    }
    func iconModifier()-> some View {
        self
            .imageModifier()
            .frame(maxWidth: 128)
            .foregroundColor(.purple)
            .opacity(0.5)
    }
}

struct ContentView: View {
    private let imageURL: String = "https://credo.academy/credo-academy@3x.png"
    
    var body: some View {
        
        AsyncImage(url: URL(string: imageURL)){
            Image in
            Image.imageModifier()
                
        }placeholder:{
            Image(systemName: "photo.circle.fill")
                .iconModifier()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
