//
//  StoresContainerView.swift
//  ChefDelivery
//
//  Created by Livia Keller on 02/11/23.
//

import SwiftUI

struct StoresContainerView: View {
    
    let title = "Lojas"
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.headline)
            
            VStack(alignment: .leading, spacing: 30) {
                ForEach(storesMock) { mock in
                    StoreItemView(order: mock)
                }
            }
        }
        .padding(.horizontal ,20)
    }
}

#Preview {
    StoresContainerView()
}
