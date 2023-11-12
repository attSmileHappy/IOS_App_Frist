//
//  ContentView.swift
//  Demo
//
//  Created by 김예지 on 10/31/23.
//

import SwiftUI

struct ContentView: View {
    
    var place: String = "Korea"
    var name: String = "예지"
    
    // 02. Variable Type
    var age: Int = 20 // int는 안되며, Int만 됨. Swift는 대소문자 구분
    var height: Float = 183.6
    var weight: Double = 61.23452
    var havePet: Bool = false
    
    var body: some View {
        VStack { // 스택이 쌓여있는 것 V는 버티칼 (세로)로 쌓여있는 것
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, My world!")
            Text(place)
            // Text(100)- error : No exact matches in call to initializer. Text 함수는 오직 문자열 타입만 들어갈 수 있음. 그래서 아래처럼 숫자를 아예 문자 형식으로 바꿔주어야 함.
            Text("100")
            Text(place + " Hello, My world!")
            Text("\(name)님 안녕하세요!")
            // Swift의 문장 속 변수는 \() 원표시 괄호 조합인 듯
            Text("\(name)님 안녕히가세요!")
            Text(name)
            
            // 02. Variable Type
            Text("\(age)")
            Text("\(havePet.description)") // 변수명.description은 문자열 타입의 설명을 다는 것
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
