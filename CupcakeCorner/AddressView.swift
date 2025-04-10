//
//  AddressView.swift
//  CupcakeCorner
//
//  Created by Максим Зыкин on 08.04.2025.
//

import SwiftUI

struct AddressView: View {
    @ObservedObject var order: Order
    
    var body: some View {
        Form {
            Section {
                TextField("Name", text: $order.name)
                TextField("Street Address", text: $order.streetAddress)
                TextField("City", text: $order.city)
                TextField("Zip", text: $order.zip)
            }
            
            Section {
                NavigationLink("Check out") {
                    CheckoutView(order: order)
                        .onAppear(perform: order.saveUserAddress)
                }
            }
            .disabled(order.hasValidAddress == false)
        }
        .navigationTitle("Delivety details")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    AddressView(order: Order())
}
