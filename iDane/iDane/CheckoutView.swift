//
//  CheckoutView.swift
//  iDane
//
//  Created by Jimmy Ronaldo Macedo Pizango on 5/10/23.
//

import SwiftUI

struct CheckoutView: View {
    @State private var addLoyaltyDetails = false
    @State private var loyaltyNumber = ""
    
    @EnvironmentObject var order: Order
    let paymentTypes = ["Cash", "Credit Card", "iDine Point"]
    @State private var paymentType = "Cash"
    
    let tipAmounts = [10, 15, 20, 25, 0]
    @State private var tipAmount = 15
    
    var body: some View {
        Form {
            Section {
                Picker("How do you want to pay?", selection: $paymentType) {
                    ForEach(paymentTypes, id: \.self){
                        Text($0)
                    }
                }
                Toggle("Add iDine loyalty card", isOn: $addLoyaltyDetails.animation())
                if addLoyaltyDetails{
                    TextField("Enter your iDine ID", text: $loyaltyNumber)
                }
            }
            Section("Add a tip?") {
                Picker("Percentage:", selection: $tipAmount) {
                    ForEach(tipAmounts, id: \.self) {
                        Text("\($0)%")
                    }
                }
                .pickerStyle(.segmented)
            }
            Section("Total: $100") {
                Button("Confirm order") {
                    // place the order
                }
            }
        }
        .navigationTitle("Payment")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct CheckoutView_Previews: PreviewProvider {
    static var previews: some View {
        CheckoutView()
            .environmentObject(Order())
    }
}

