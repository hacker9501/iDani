//
//  MainView.swift
//  iDane
//
//  Created by Elver Mayta Hernández on 2/10/23.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView{
            ContentView()
                .tabItem(){
                    Label("Menú", systemImage: "list.dash")
                }
            OrderView()
                .tabItem(){
                    Label("Order", systemImage: "square.and.pencil")
                }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
            .environmentObject(Order())
    }
}
