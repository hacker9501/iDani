//
//  ContentView.swift
//  iDane
//
//  Created by Elver Mayta Hernández on 23/09/23.
//

import SwiftUI

struct ContentView: View {
    
    let menu = Bundle.main.decode([MenuSection].self, from: "menu.json")
    
    var body: some View {
        NavigationStack{
                    List{
                        ForEach(menu) { section in
                            Section(header: Text(section.name)){
                                ForEach(section.items) { item in
                                    NavigationLink(value: item){
                                        ItemRow(item: item)
                                    }
                                }
                            }
                        }
                    }
                    .navigationDestination(for: MenuItem.self) { item in
                        ItemDetail(item: item)
                    }
                    .navigationTitle("Menu")
                    .listStyle(.grouped)
                }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
            .environmentObject(Order())
    }
}
