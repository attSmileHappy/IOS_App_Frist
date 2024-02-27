//
//  MyButton.swift
//  Demo
//
//  Created by 김예지 on 2/28/24.
//

import SwiftUI

struct MyButton: View {
    @State  var buttonTitle: String
    var buttonColor: Color
    
    var body: some View {
        Button{
        } label: {
            Text(buttonTitle)
                .padding()
                .background(buttonColor)
                .foregroundColor(.white)
                .cornerRadius(10)
                .bold()
        }
    }
}

#Preview {
    MyButton(buttonTitle: "", buttonColor: .blue)
}
