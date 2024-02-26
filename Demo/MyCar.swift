//
//  MyCar.swift
//  Demo
//
//  Created by 김예지 on 2/26/24.
//

import SwiftUI

struct MyCar: View {
    var myCar : KIA = KIA()
    var broCar: Hyundai = Hyundai()
    let cars: [Driveable] = [KIA(), Hyundai()]
    // 상단과 같이 객체들이 같은 설계를 가지고 있다면, 집합으로 묶일 수 있음.
    // Ex) 네이버 로그인, 카카오 로그인, 이메일로 로그인 등을 로그인 프로토콜을 설계하여 하나의 컬렉션 또는 eunm 등으로 묶어서 한번에 설계할 수 있음.
    
    @State var speed: Int = 10
    
    var body: some View {
        Text("속도: \(speed)")
        Button {
            speed = broCar.speedDown(wiht: speed)
            cars.randomElement()?.speedDown(wiht: speed)
        } label: {
            Text("감속")
        }
    }
}

// Type 'KIA' does not conform to protocol 'Driveable' : func가 없어서 발생.
struct KIA: Driveable{
    func speedDown(wiht speed: Int) -> Int {
       print("속도가 0으로 줄어듭니다.")
        return 0
    }
}

struct Hyundai: Driveable {
    func speedDown(wiht speed: Int) -> Int {
        print("속도가 절반 줄어들어요.")
        return speed / 2
    }
}

// swift 언어에서는 대소문자 구분이 중요하다. 방금 더 와닿았는데, Protocol로 작성하자 계속해서 오류가 났고, 그 후 소문자 p로 변경하자 바로 해결됐다.
protocol Driveable {
    func speedDown(wiht speed: Int) -> Int
}

#Preview {
    MyCar()
}
