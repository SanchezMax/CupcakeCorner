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
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    AddressView(order: Order())
}
