//
//  MyAppOnBoarding.swift
//  Demo
//
//  Created by 김예지 on 2/29/24.
//

import SwiftUI

struct MyAppOnBoarding: View {
    var body: some View {
        VStack(alignment: .center){
            Text("환영합니다. MyApp 입니다.")
                .padding(.top, 50)
                .bold()
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
           Spacer()
            VStack(alignment: .leading){
                descriptions(imgname: "hand.draw", titles: "화면 이동 가능", content: "ATT가 실습 후 혼자 개발해보는 최초의 화면 이동이 가능한 페이지")
                descriptions(imgname: "heart.circle", titles: "흥미롭다", content: "Swift 문법 공부 후 개발 실습을 하는 중인데, 개발 진행 중 제일 앱 같아서 뿌듯하다.")
                descriptions(imgname: "fireworks", titles: "열정을 잃지말자", content: "지금 느끼는 개발의 즐거움이 100살까지 이어지길~")
            }
            .padding()
            Spacer()
        }
        
    }
}

struct descriptions: View {
    var imgname: String
    var titles: String
    var content: String
    
    var body: some View {
        HStack{
            Image(systemName: "\(imgname)")
                .resizable()
                .scaledToFit()
                .frame(width: 50)
                .foregroundColor(.pink)
                .padding()
            VStack(alignment: .leading) {
            Text("\(titles)")
                    .bold()
                    .font(.headline)
                Text("\(content)")
                        .font(.subheadline)
                        .foregroundColor(.gray)
            }
        }
    }
}

struct MyAppOnBoarding2: View {
    @Binding var downModal: Bool
    
    var body: some View {
        VStack{
            Text("그럼 메인화면으로 가볼까요?")
            Button{
                downModal = false
            } label: {
                Text("Go!")
            }
            .padding()
            .background(.pink)
            .foregroundColor(.white)
            .cornerRadius(10)
            .frame(width: 300, height: 100)
        }
    }
}


#Preview {
    MyAppOnBoarding()
}
#Preview {
    MyAppOnBoarding2(downModal: .constant(true))
}
