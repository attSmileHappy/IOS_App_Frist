//
//  MyAppTabPage.swift
//  Demo
//
//  Created by 김예지 on 2/29/24.
//

import SwiftUI

struct MyAppTabPage: View {
    let imgName = ["bell.badge.fill", "headphones", "moon.fill", "hourglass"]
    let imgColor: [Color] = [.red, .pink, .purple, .purple]
    let titles = ["알림", "사운드 및 햅틱", "집중 모드", "스크린 타임"]
    let descriptions = ["알림 페이지", "사운드 및 햅틱 페이지", "집중 모드 페이지", "스크린 타임 페이지"]
    
    var body: some View {
        NavigationStack{
            NavigationLink{
                Text("애플 아이디 페이지")
            } label: {
                HStack{
                    Image(systemName: "person.circle.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 60)
                        .foregroundColor(.gray)
                    VStack(alignment: .leading){
                        Text("AllTheTime")
                        Text("Apple ID, iCloud+, 미디어 및 구입 항목")
                            .font(.subheadline)
                    }
                }
            } .navigationTitle("설정")
            List{
                ForEach(0..<titles.count, id: \.self) {index in
                    NavigationLink{
                        Text(descriptions[index])
                    } label: {
                        Image(systemName: imgName[index])
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20)
                            .padding()
                            .background(imgColor[index])
                            .foregroundColor(.white)
                            .cornerRadius(10)
                        Text(titles[index])
                    }
                }
                
            }
        }
    }
}

#Preview {
    MyAppTabPage()
}
