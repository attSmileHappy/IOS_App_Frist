//
//  Modal.swift
//  Demo
//
//  Created by 김예지 on 2/28/24.
//

import SwiftUI

struct Modal: View {
    @State var showModal: Bool = false
    
    var body: some View {
        Text("메인화면")
        Button{
            showModal = true
        } label: {
            Text("Open")
        }
        .sheet(isPresented: $showModal){
            Detail(goMain: $showModal)
        }
    }
}

#Preview {
    Modal()
}
