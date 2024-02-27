//
//  Fruit List.swift
//  Demo
//
//  Created by 김예지 on 2/28/24.
//

import SwiftUI

struct Fruit_List: View {
    
    var fruits = [
        Fruit(imageName: "applelogo", name: "Apple", color: .red, price: 1000),
        Fruit(imageName: "b.circle.fill", name: "Banana", color: .yellow, price: 1500),
        Fruit(imageName: "c.circle.fill", name: "Cherry", color: .pink, price: 2000),
        Fruit(imageName: "k.circle.fill", name: "Kiwi", color: .green, price: 3000)
    ]

    var body: some View {
        NavigationStack{
            List(0..<fruits.count, id: \.self) { index in
                HStack{
                    Image(systemName: fruits[index].imageName)
                        .foregroundColor(fruits[index].color)
                    Text("\(fruits[index].name)")
                    Text("\(fruits[index].price)원")
                }
            }
            .navigationTitle("Fruit List")
        }
    }
}

struct Fruit {
    let imageName: String
    let name: String
    let color: Color
    let price: Int
}

#Preview {
    Fruit_List()
}
