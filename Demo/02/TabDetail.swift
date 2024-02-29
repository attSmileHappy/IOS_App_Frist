//
//  TabDetail.swift
//  Demo
//
//  Created by 김예지 on 2/29/24.
//

import SwiftUI

struct TabDetail: View {
    var body: some View {
        ZStack{
            Color.gray.ignoresSafeArea()
            Text("This is detail")
        }
    }
}

struct TabDetail2: View {
    var body: some View {
        ZStack{
            Color.blue.ignoresSafeArea()
            VStack{
                Text("This is detail")
                Button{
                    
                } label: {
                    Text("Contiune")
                        .padding()
                        .background(.green)
                }
            }
        }
    }
}

struct TabDetail3: View {
    var body: some View {
        ZStack{
            Color.green.ignoresSafeArea()
            Text("This is detail")
        }
    }
}

#Preview {
    TabDetail()
}
