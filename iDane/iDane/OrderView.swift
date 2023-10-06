//
//  OrderView.swift
//  iDane
//
//  Created by Whiz on 30/09/23.
//

import SwiftUI

struct OrderView: View {
    
    @EnvironmentObject var order: Order
    
    var body: some View {
        NavigationStack{
            List{
                Section{
                    ForEach(order.items) {item in
                        HStack{
                            Text(item.name)
                            Spacer()
                            Text("$\(item.price)")
                        }
                    }
                }
                
                Section{
                    NavigationLink("Place Order"){
                        CheckoutView()
                    }
                }
            }
            .navigationTitle("Order")
        }
    }
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
            .environmentObject(Order())
    }
}
