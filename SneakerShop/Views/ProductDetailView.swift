//
//  ProductDetailView.swift
//  SneakerShop
//
//  Created by Sam on 24/02/2023.
//

import SwiftUI

struct ProductDetailView: View {
    var product: Product
    @StateObject var cartManager: CartManager

    var body: some View {
            ScrollView {
                ZStack(alignment: .topLeading) {
                    VStack(alignment: .leading, spacing: 5,  content:{
                        
                        ZStack{
                            Image(product.image)
                                .resizable()
                                .cornerRadius(20)
                                .scaledToFit()
                                .padding(.horizontal, 15)
                        }
                            
                        Text(product.info)
                            .font(.body)
                            .padding(.horizontal, 15)
                            .padding(.vertical, 10)
                        Spacer()
                        
                        if cartManager.products.contains(where: {$0.id == product.id
                        }){
                            Button {
                                cartManager.removeFromCart(product: product)
                            } label: {
                                Text("Remove from Cart")
                                    .padding()
                                    .frame(maxWidth:.infinity)
                            }.background(.red)
                                .foregroundColor(.white)
                                .padding()
                                .frame(maxWidth:.infinity)
                                
                        }else{
                            Button {
                                cartManager.addToCart(product: product)
                            } label: {

                                Text("Add to Cart")
                                    .padding()
                                    .frame(width: .infinity)
                                    .frame(maxWidth:.infinity)
                                    
                            }.background(.black)
                                .foregroundColor(.white)
                                .padding()
                            
                               
                        }
                        
                        

                        
                        
                        Spacer()
                        
                    })
                
            }.navigationTitle(Text(product.name))
                .toolbar {
                    NavigationLink {
                        CartView()
                            .environmentObject(cartManager)
                    } label: {
                        CartButton(numberOfProducts: cartManager.products.count)
                    }
            }
        }
        
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView(
            product: productList[0],
            cartManager: CartManager()
        )
            
    }
}
