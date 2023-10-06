//
//  iDaneApp.swift
//  iDane
//
//  Created by Elver Mayta Hernández on 23/09/23.
//

import SwiftUI

@main
struct iDaneApp: App {
    
    @StateObject var order = Order()
    
    var body: some Scene {
        WindowGroup {
            MainView()
                .environmentObject(order)
        }
    }
}
