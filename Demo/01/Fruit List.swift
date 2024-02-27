//
//  Fruit List.swift
//  Demo
//
//  Created by 김예지 on 2/28/24.
//

import SwiftUI

struct Fruit_List: View {
    
   @State 
    var fruits = [
        Fruit(imageName: "applelogo", name: "Apple", color: .red, price: 1000),
        Fruit(imageName: "b.circle.fill", name: "Banana", color: .yellow, price: 1500),
        Fruit(imageName: "c.circle.fill", name: "Cherry", color: .pink, price: 2000),
        Fruit(imageName: "k.circle.fill", name: "Kiwi", color: .green, price: 3000)
    ]
    
    @State var fruitName: String = ""
    
    var body: some View {
        NavigationStack{
            VStack{
                HStack{
                    TextField("추가할 과일:", text: $fruitName)
                        .padding()
                    Button{
                        fruits.append(Fruit(imageName: "applelogo", name: fruitName, color: .black, price: 1000))
                    } label: {
                        Text("추가")
                            .padding()
                            .background(.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                }
                .padding()
                
                List {
                    ForEach(fruits, id: \.self) { fruit in
                        HStack {
                            Image(systemName: fruit.imageName)
                                                   .foregroundColor(fruit.color)
                            Text("\(fruit.name)")
                            Text("\(fruit.price)원")
                        }
                    }
                    .onDelete { offsets in
                        fruits.remove(atOffsets: offsets)
                    }
                }
                .navigationTitle("Fruit List")
            }
        }
    }
}

struct Fruit: Identifiable, Hashable {
    let id = UUID()
    let imageName: String
    let name: String
    let color: Color
    let price: Int
}


#Preview {
    Fruit_List()
}
