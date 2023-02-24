//
//  ProductCard.swift
//  SneakerShop
//
//  Created by Sam on 23/02/2023.
//

import SwiftUI

struct ProductCard: View {
    @EnvironmentObject var cartManager: CartManager
    var product: Product
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            ZStack(alignment: .bottom) {
                Image(product.image)
                    .resizable()
                    .cornerRadius(20)
                    .frame(width: 180)
                    .scaledToFit()
                
                VStack(alignment: .leading) {
                    Text(product.name)
                        .bold()
                    
                    Text("GHS \(product.price)")
                        .font(.caption)
                }
                .padding()
                .frame(width: 180, alignment: .leading)
                .background(.ultraThinMaterial)
                .cornerRadius(20)
            }
            .frame(width: 180, height: 250)
            .shadow(radius: 3)
            
            Button {
                if cartManager.products.contains(where: {$0.id == product.id}){
                    cartManager.removeFromCart(product: product)
                }else{
                    cartManager.addToCart(product: product)
                }
            } label: {
                if cartManager.products.contains(where: {$0.id == product.id}){
                    Image(systemName: "minus")
                        .padding(10)
                        .foregroundColor(.white)
                        .background(.red)
                        .cornerRadius(50)
                        .padding()
                }else{
                    Image(systemName: "plus")
                        .padding(10)
                        .foregroundColor(.white)
                        .background(.black)
                        .cornerRadius(50)
                        .padding()
                }
            }
        }
    }
}

struct ProductCard_Previews: PreviewProvider {
    static var previews: some View {
        ProductCard(product: productList[0])
            .environmentObject(CartManager())
    }
}
