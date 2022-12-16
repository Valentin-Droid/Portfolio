//
//  ContentView.swift
//  Portfolio
//
//  Created by Valentin Drelon on 10/12/2022.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        TabView {
           HomePage()
                .tabItem() {
                    Image(systemName: "person.circle")
                    Text("Moi")
                }
            ProjectPage()
                .tabItem() {
                    Image(systemName: "bolt")
                    Text("Projets")
                }
            MessagePage()
                .tabItem() {
                    Image(systemName: "message")
                    Text("Messages")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
