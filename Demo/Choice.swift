//
//  Choice.swift
//  Demo
//
//  Created by 김예지 on 12/7/23.
//

import SwiftUI

struct Choice: View {
    var direction: Direction = .south
    var member: Member = .yz
    var munu : Menu = .steak("레어")
    
    var body: some View {
        Text("방향은 \(direction.rawValue)쪽 입니다.")
    }
}


enum Direction: String {
    case north = "북"
    case east = "동"
    case west = "서"
    case south = "남"
    case myway = "나만의 길"
}

enum Member : String {
    // case만 나열할 때는 한 줄로 사용하는 것도 가능, 단 rawValue를 넣어야할 경우에는 case 따로 해줘야함.
    case yz, tom, koko, jisu
}


enum Menu {
    case pizza
    case pasta (Int)
    case steak(String)
     //case의 연관된 값을 함께 넣어줄 수도 있음.
}

enum Steak : String {
    case rare
    case medium
    case weldon
}

#Preview {
    Choice()
}
