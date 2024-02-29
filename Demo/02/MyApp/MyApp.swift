//
//  MyApp.swift
//  Demo
//
//  Created by 김예지 on 2/29/24.
//

import SwiftUI

struct MyApp: View {
    @State var showModal = false
    
    var body: some View {
        // 앱을 개발할 때 레이아웃 설계 후 가장 먼저 바깥구조를 잡아야 편함.
        NavigationStack{
            TabView{
                MyAppTabPage()
                    .tabItem {
                        Label("설정", systemImage: "gearshape")
                    }
                Text("빈 화면")
                    .tabItem {
                        Label("빈 화면", systemImage: "face.smiling.inverse")
                    }
            }
            .toolbar{
                ToolbarItem(placement: .automatic){
                    Button{
                        showModal = true
                    } label: {
                        Text("온보딩 화면")
                    }
                }
            }
            .sheet(isPresented: $showModal, content: {
                TabView {
                    MyAppOnBoarding()
                    MyAppOnBoarding2(downModal: $showModal)
                }.tabViewStyle(.page)
            })
            .onAppear(){
                showModal = true
            }
        }
    }
}

#Preview {
    MyApp()
}
