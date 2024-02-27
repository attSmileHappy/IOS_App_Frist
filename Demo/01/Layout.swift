//
//  Layout.swift
//  Demo
//
//  Created by 김예지 on 2/28/24.
//

import SwiftUI

struct Layout: View {
    @State var heartCount: Int = 0
    
    var body: some View {
        VStack(alignment: .center) {
            Image(systemName: "pencil")
                .resizable()
                .scaledToFit() //비율 맞추는 것
                .frame(width: 200, height: 200) // 크기 지정
            
            Text("타이틀 입니다")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()
            
            Text("헤드라인이며 글자크기는 34 입니다")
                .font(.headline)
                .font(.system(size: 34))
                .padding()
            
            Text("좋아요 수 : \(heartCount)")
                .font(.body)
                .padding()
            
            HStack{
                MyButton(buttonTitle: "Button 1", buttonColor: .blue)
                MyButton(buttonTitle: "Button 2", buttonColor: .green)
            }
            Button{
                heartCount += 1
            } label: {
                VStack{
                    Image(systemName: "heart")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30)
                    Text("Like button")
                }
            }
            .foregroundColor(.white)
            .padding()
            .background(.pink)
            .cornerRadius(10)
        }
    }
}

#Preview {
    Layout()
}
