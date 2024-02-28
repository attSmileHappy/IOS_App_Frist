//
//  Navigation.swift
//  Demo
//
//  Created by 김예지 on 2/29/24.
//

import SwiftUI

struct Navigation: View {
    let titles = ["알림", "사운드 및 햅틱", "집중 모드", "스크린 타임"]
    let descriptions = ["알림 페이지", "사운드 및 햅틱 페이지", "집중 모드 페이지", "스크린 타임 페이지"]
    @State var showModal: Bool = false
    
    var body: some View {
        NavigationStack{
            List{
                ForEach(0..<titles.count, id: \.self) { index in
                    NavigationLink{
                        Text(descriptions[index])
                    } label: {
                        Text(titles[index])
                    }
                }
            }
            .toolbar{
                ToolbarItem(placement: .bottomBar){
                    Button{
                        showModal = true
                    } label: {
                        Text("자주 묻는 질문")
                        }
                }
            } .sheet(isPresented: $showModal, content: {
                Text("없습니다.")
                })
            .navigationTitle("네비게이션")
        }
    }
}

#Preview {
    Navigation()
}
