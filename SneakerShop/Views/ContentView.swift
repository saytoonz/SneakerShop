//
//  ContentView.swift
//  SneakerShop
//
//  Created by Sam on 23/02/2023.
//

import SwiftUI

struct ContentView: View {
    @StateObject var cartManager = CartManager()
    var columns = [GridItem(.adaptive(minimum: 160), spacing: 20)]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(productList, id: \.id) { product in
                        NavigationLink {
                            ProductDetailView(
                                product: product,
                                cartManager: cartManager
                            )
                                .environmentObject(cartManager)
                        } label: {
                            ProductCard(product: product)
                                .environmentObject(cartManager)
                        }
                    }
                }
                .padding()
            }
            .navigationTitle(Text("Sneaker Shop"))
            .toolbar {
                NavigationLink {
                    CartView()
                        .environmentObject(cartManager)
                } label: {
                    CartButton(numberOfProducts: cartManager.products.count)
                }
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
