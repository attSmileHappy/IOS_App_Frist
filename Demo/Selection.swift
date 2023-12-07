//
//  Selection.swift
//  Demo
//
//  Created by 김예지 on 12/7/23.
//

import SwiftUI

struct Selection: View {
    @State var myDirection : Direction = .myway
    
    var body: some View {
        
        VStack {
            switch myDirection { //Switch must be exhaustive
            case .north:
                Text("\(myDirection.rawValue)쪽은 북한.")
            case .east:
                Text("\(myDirection.rawValue)쪽은 동해바다.")
            case .west:
                Text("서쪽은 서해바다.")
            case .south:
                Text("남쪽은 제주도.")
            default:
                Text("자유의 길") // default 문으로 예외처리에 대한 에러 사항을 잡을 수도 있음.
            }
        }
        
        Button {
            
            if myDirection == .myway{
                myDirection = .west
            } else {
                myDirection = .north
            }
            // if문과 swiftch문은 비슷하지만, 미묘하게 다름. if문은 해당 선택지와 맞을 때까지 if문을 타고타고 계속해서 하는건데, switch는 한번에 선택지로 가게됨.
            // 의도를 파악할 수 있도록 코드의 가독성 차이가 있음.
            
            switch myDirection {
            case .north, .east:
                myDirection = .west
            case .west:
                myDirection = .south
            case .south:
                myDirection = .north
            default:
                myDirection = .west //Default will never be executed / 귀찮음으로 인해 디폴트 값으로 나머지 상황을 처리하는 것보다는 case별로 기능을 다 만드는게 좋음
            }
            } label: {
          Text("돌리기")
        }
    }
}

#Preview {
    Selection()
}
