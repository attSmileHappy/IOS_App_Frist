//
//  Loop.swift
//  Demo
//
//  Created by 김예지 on 11/15/23.
//

import SwiftUI

let userName: [String] = ["가","나", "다", "라", "마"]
struct Loop: View {
    var body: some View {
        
        VStack{
            ForEach(userName, id: \.self) { item in
                Text(item)
            }
        }
    }
}

#Preview {
    Loop()
}
