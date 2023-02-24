//
//  Product.swift
//  SneakerShop
//
//  Created by Sam on 23/02/2023.
//

import Foundation

/// The Product model
struct Product: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var price: Int
    var info: String
}

var productList = [
    
    Product(
        name: "PLAY X Converse",
        image: "image-1",
        price: 265,
        info: "Black canvas All Star high-top Converse from Comme Des Garçons Play featuring front lace-up fastening and signature heart logo at sides."
    ),
    
    Product(
        name: "Jordan Youth Air 1",
        image: "image-2",
        price: 73,
        info: "The Air Jordan 1 GS “Royal Toe” is the youth sizing of the popular summer 2020 colorway. Using the same color block of the OG-inspired Jordan 1 High 'Bred Toe,' this edition features a white leather mid-panel, a black leather heel and collar, and royal blue panels on the toe and ankle. Contrasting black leather overlays appear on the forefoot and eyelet. A black leather Swoosh covers each side and white Wings branding can be found on the collar. White “Nike Air” graces the tongue tag to complete the look. Release date: May 9, 2020."
    ),
    
    Product(
        name: "Nike Air Force 1",
        image: "image-3",
        price: 97,
        info: "Your complete satisfaction is important to us. If for any reason you are not 100% satisfied with your purchase, simply create an RMA & send your item back in its new, unused condition, with original packaging and we will be happy to provide you with either a full refund of the purchase price or a store credit toward an exchange (excluding shipping & handling charges). Some conditions may apply. Read our full return policy."
    ),
    
    Product(
        name: "Nike Kyrie 7",
        image: "image-4",
        price: 470,
        info: "Bearing a strong resemblance to the Kyrie 1, the Kyrie 7 has a mesh-infused upper and tooth-like edges formed atop the lateral forefoot. The heels are embroidered with Kyrie‘s signature and an inscription in the bottom heel region spells out “His Legacy Is Going To Live Forever”, a quote referencing Kobe Bryant. The shoe is set for launch in four bold colorways"
    ),
    Product(
        name: "Nike Air Force 1",
        image: "image-5",
        price: 99,
        info: "Stand out in the crowd with the new Supreme Air Force 1. Amongst one of the most popular trainers in the USA in 2019, the trendy shoes are instantly recognizable and are particularly popular in the Hit hop scene. The crisp leather and legendary Air Sole make these trainers comfortable, fashionable and give you a firm statement wherever you go."
    ),
    Product(
        name: "Adidas Yeezy",
        image: "image-6",
        price: 166,
        info: "The being formerly known as “Kanye West” had a lot to write about adidas over the weekend. And while the future of the adidas Yeezy empire is uncertain, what’s known is that the Yeezy Boost 350 v2 has been prepped in an “MX Grey” style ahead of Fall 2022."
    ),
    Product(
        name: "Black Air Force 1",
        image: "image-7",
        price: 109,
        info: "The Nike Air Force 1 '07 LV8 Utility Men's Shoe adds overt branding to the hoops-inspired performance features of the 1982 original for an irreverent take on an icon."
    ),
    Product(
        name: "Nike Air Max 90",
        image: "image-8",
        price: 128,
        info: "The Nike W Air Max 90 'Rose' will be available Thursday, January 30th instore only! Please note that we carry a very limited stock and we therefore don't take reservations. So as always: FIRST COME, FIRST SERVED! "
    ),
    Product(
        name: "Adidas Yeezy 500",
        image: "image-9",
        price: 365,
        info: "The Yeezy Slide ‘Bone’ is another take on the slip-on’s minimalist design this time, with a dark beige hue. The iconic molded one-piece footwear is built up of injected EVA. Known to be lightweight and durable, natural cushioning properties is another famous feature"
    ),
    Product(
        name: "Air Max 270",
        image: "image-10",
        price: 250,
        info: "You can now buy the Nike Air Max 270 React at FOOTDISTRICT. You can also find similar ones in our Sneakers section."
    ),
    Product(
        name: "Legend Essential",
        image: "image-11",
        price: 100,
        info: "The Nike Legend Essential 2 comes equipped with a flat, stable heel, flexibility under the toes and side-to-side support. With loads of grip, you're ready to lift, HIIT, conquer a class or get stronger at the machines."
    ),
    Product(
        name: "Air Force 1 React",
        image: "image-12",
        price: 120,
        info: "Nike Air Force 1 React D/MS/X White release news Nike's React cushioning is already noticeable on many sneakers and has always been a regular part of Nike for a long time."
    ),
    Product(
        name: "Nike Air Max 90",
        image: "image-13",
        price: 140,
        info: "Comfort, Heritage and Nothing Better Nothing as fly, nothing as comfortable, nothing as proven -- the Nike Air Max 90 stays true to its OG roots with the iconic Waffle sole, stitched overlays and classic TPU accents. Fresh colors give a modern look while Max Air cushioning adds comfort to your journ"
    ),
    Product(
        name: "Reebok Club C85",
        image: "image-14",
        price: 75,
        info: "Smooth is how you roll. Now, you have the kicks to match. Slip on these Club C 85 sneakers and hit the scene. A simple style means these supple leather shoes pair up with anything. Because sometimes you don't have to say anything to make a statement."
    )
]

