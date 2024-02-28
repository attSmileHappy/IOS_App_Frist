//
//  Detail.swift
//  Demo
//
//  Created by 김예지 on 2/28/24.
//

import SwiftUI

struct Detail: View {
    @Binding var goMain: Bool
    
    var body: some View {
        Text("모달 화면")
        Button{
            goMain = false
        } label: {
            Text("Close")
        }
    }
}

#Preview {
    Detail(goMain: .constant(true))
}
