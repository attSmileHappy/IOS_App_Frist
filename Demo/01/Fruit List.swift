//
//  Fruit List.swift
//  Demo
//
//  Created by 김예지 on 2/28/24.
//

import SwiftUI

struct Fruit_List: View {

    var fruits = ["Apple", "Banana", "Cherry", "Orange", "Strawberry", "Pineapple", "Watermelon", "Grape", "Mango", "Kiwi", "Peach", "Plum", "Apricot", "Pear", "Lemon", "Lime", "Blueberry", "Raspberry", "Blackberry", "Cranberry", "Coconut", "Fig", "Guava", "Papaya", "Passionfruit", "Pomegranate", "Tangerine", "Lychee", "Dragonfruit"]

    var fruitPrices: [Int] = [100, 200, 300, 150, 250, 180, 500, 450, 700, 300, 120, 220, 400, 380, 600, 800, 350, 270, 320, 420, 900, 550, 680, 730, 850, 950, 890, 770, 630, 740]

    var body: some View {
        NavigationStack{
            List(0..<fruits.count, id: \.self) { index in
       
                    Text("\(fruits[index]) \(fruitPrices[index])원")
            }
            .navigationTitle("Fruit List")
        }
    }
}

#Preview {
    Fruit_List()
}
