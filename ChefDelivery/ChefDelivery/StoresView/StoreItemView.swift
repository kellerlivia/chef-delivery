//
//  StoreItemView.swift
//  ChefDelivery
//
//  Created by Livia Keller on 02/11/23.
//

import SwiftUI

struct StoreItemView: View {
    
    let order: OrderType
    
    var body: some View {
        HStack {
            Image(order.image)
                .resizable()
                .scaledToFit()
                .cornerRadius(25)
                .frame(width: 50, height: 50)
            VStack {
                Text(order.name)
                    .font(.subheadline)
            }
            Spacer()
        }
        .onTapGesture {
            print("click in \(order.name)")
        }
    }
}

#Preview {
    StoreItemView(order: OrderType(id: 1,
                                   name: "Monstro Burger",
                                   image: "monstro-burger-logo"))
}
