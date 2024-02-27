//
//  SimpleView.swift
//  Demo
//
//  Created by 김예지 on 2/28/24.
//

import SwiftUI

struct SimpleView: View {
    var body: some View {
        VStack(alignment: .center) {
            Image(systemName: "pencil")
                .resizable()
                .scaledToFit() //비율 맞추는 것
                .frame(width: 200, height: 200) // 크기 지정
            
            Text("헤드라인 입니다")
                .font(.headline)
                .fontWeight(.bold)
                .padding()
            
            Text("서브헤드라인 입니다")
                .font(.subheadline)
                .padding()
            
            Text("바디 입니다")
                .font(.body)
                .padding()
            
            // 같은 세부설정을 적용하여도 때로는 적용시킨 순서에 따라서 UI 요소가 변경될 수 있음. 아래의 버튼이 그 예시.
            Button{
                   } label: {
                Text("Button 1")
                           .background(.blue)
                           .foregroundColor(.white)
                           .padding()
                           .cornerRadius(10)
                           .bold()
            }
            
            Button{
                   } label: {
                Text("Button 2")
                           .padding()
                           .background(.blue)
                           .foregroundColor(.white)
                           .cornerRadius(10)
                           .bold()
            }
            
        }
    }
}

#Preview {
    SimpleView()
}
