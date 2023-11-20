//
//  Diff.swift
//  Demo
//
//  Created by 김예지 on 11/17/23.
//

import SwiftUI

struct Diff: View {
    let myCar = Car(name: "스턱카", owner: "스턱")
  @ObservedObject  var myKar = Kar(name: "클랫카", owner: "클래스")
    
    
    var body: some View {
        VStack{
            Text("\(myCar.name)의 주인은 \(myCar.owner)입니다.")
            Text("\(myKar.name)의 주인은 \(myKar.owner)입니다.")
            Button{
                var broCar = myKar
                
                broCar.name = "동생차"
                broCar.owner = "동생"
                myKar.syaHi()
            } label: {
                Text("출발")
            }
        }
    }
}

struct Car{
    let name: String
    let owner: String
    
    func syaHi() {
    print("hi \(owner)")
    }
}
/** Struct는 변수 즉, 프로퍼티만 선언되어도 됨.
 class Kar{
     let name: String
     let owner: String
 }
- error:  Class 'Kar' has no initializers
 그러나, 상단 class 코드와 같이 class는 메소드가 필수임
 **/
class Kar: ObservableObject {
  @Published  var name: String
    var owner: String
    
    func syaHi() {
    print("hi \(owner)")
    }
    init(name: String, owner: String) {
        self.name = name
        self.owner = owner
    }
}
#Preview {
    Diff()
}
