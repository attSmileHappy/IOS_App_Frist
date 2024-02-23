//
//  Sample.swift
//  Demo
//
//  Created by 김예지 on 2/24/24.
// 해당 실습 앱의 목적 : 가야할 길과 가야할 길에 무엇이 있는지를 알려주는 페이지 제작

import SwiftUI

struct Sample: View {
    
    let date = [
        Destination(direction: .north,
                    food: "Vegetable store",
                    image: Image(systemName:"carrot")),
        Destination(direction: .west,
                    food: "cafe",
                    image: Image(systemName:"cup.and.saucer.fill")),
        Destination(direction: .east,
                    food: nil,
                    image: Image(systemName:"sun.horizon.fill")),
        Destination(direction: .south,
                    food: "bakery",
                    image: Image(systemName:"birthday.cake.fill")),
    ]
    
    @State var selectedDestination: Destination?
    
    var body: some View {
        VStack{
            selectedDestination?.image
                .resizable()
                .scaledToFill()
                .frame(width: 200, height: 200)
            
            
            if let destination = selectedDestination{
                Text(destination.direction.rawValue)
                if let food = destination.food {
                    Text(food)
                }
            }
            Button{
                selectedDestination = date.randomElement()
            } label:{
                Image(systemName:"arrowshape.zigzag.right.fill")
                Text("어느 방향으로 갈까요?")
            }
        }
        
        
    }
}

struct Destination {
    let direction : DirectionY
    let food: String?
    let image : Image
}


enum DirectionY: String {
    case north = "북"
    case east = "동"
    case west = "서"
    case south = "남"
}


#Preview {
    Sample()
}
