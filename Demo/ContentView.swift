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
    
    var body: some View {
        VStack { // 스택이 쌓여있는 것 V는 버티칼 (세로)로 쌓여있는 것
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, My world!")
            Text(place)
            Text(place + " Hello, My world!")
            Text("\(name)님 안녕하세요!")
            // Swift의 문장 속 변수는 \() 원표시 괄호 조합인 듯
            Text(name)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
