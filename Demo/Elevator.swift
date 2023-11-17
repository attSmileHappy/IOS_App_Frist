//
//  Elevator.swift
//  Demo
//
//  Created by 김예지 on 11/16/23.
//

import SwiftUI

struct Elevator: View {
    
 @State   var myElevetor = ElevtorStruct()
    
    var body: some View {
        VStack {
            Text("층수 : \(myElevetor.level)")
            
            HStack {
                Button("👆🏻") {
                    myElevetor.moveUp()
                }
                
                Button("👇🏻") {
                    myElevetor.moveDown()
                }
            }
        }
    }
}

struct ElevtorStruct {
    // 층 수를 표시해주는 디스플레이
    // 위로 올라갈 수 있어야 함
    // 아래로 내려갈 수 있어야 함
    var level: Int = 1
    
mutating func moveUp(){
        level = level + 1
    }
    
    mutating  func moveDown(){
        level = level - 1
    }
    
    
    struct Elevator_Previews: PreviewProvider {
        static var previews: some View {
            Elevator()
        }
    }
}
