//
//  MyTab.swift
//  Demo
//
//  Created by 김예지 on 2/29/24.
//

import SwiftUI

struct MyTab: View {
    var body: some View {
        TabView {
            TabDetail()
                .background(.gray)
                .badge(2)
                .tabItem {
                    Label("Received", systemImage: "tray.and.arrow.down.fill")
                }
            TabDetail2()
                .tabItem {
                    Label("Sent", systemImage: "tray.and.arrow.up.fill")
                }
            TabDetail3()
                    .badge("!")
                    .tabItem {
                        Label("Account", systemImage: "person.crop.circle.fill")
                    }
        }.tabViewStyle(.page(indexDisplayMode: .always))
    }
}

#Preview {
    MyTab()
}
