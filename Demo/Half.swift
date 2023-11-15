//
//  Half.swift
//  Demo
//
//  Created by 김예지 on 11/15/23.
//

import SwiftUI

struct Half: View {
    var name : String = "예지"
    var age: Int = 25
    let nameList : [String] = ["예지", "아라", "지수", "준면"]
    var body: some View {
        VStack {
            HStack{
                Text("All The Time Smile & Happy")
                Image(systemName: "smiley")
                Image(systemName: "heart")
            }
            Text("Hello, \(name)!")
        }
        
        List {
            ForEach(nameList, id: \.self) {nameList in
                var welcome = sayHi(to : nameList)
                if nameList == "예지" {
                    Text("이 채널의 주인인 \(welcome)")
                }
                Text(welcome)
            }
           
        }
    }
    func sayHi(to nameList: String) -> String {
        return "\(nameList)님 반갑습니다."
    }
}

#Preview {
    Half()
}
